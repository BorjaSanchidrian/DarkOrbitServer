package com.darkorbit.attack;

import java.net.Socket;
import java.util.Random;

import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.objects.Player;

public class LaserSystem extends AttackController {
	private Socket playerSocket, targetSocket;
	private Player target;
	private int minDamage, maxDamage;
	
	public LaserSystem(int playerID) {
		super(playerID);
		
		playerSocket = super.getPlayerCM().getSocket();
	}

	@Override
	public void doDamage() {
		/*
		 * El daño variara un 15%
		 */
		minDamage = (int) (player.activeConfig().getDamage() * 0.80);
		maxDamage = (int) (player.activeConfig().getDamage() * 1.20);
		
		if(player.isPlayer()) {
			//Comprueba que el target este online
			if(GameManager.isOnline(player.getTargetID())) {
				target = GameManager.getConnectionManager(player.getTargetID()).player();
				targetSocket = GameManager.getConnectionManager(player.getTargetID()).getSocket();
			} else { target = null; }
		} else {
			//el target es un NPC
		}
		
		if((target != null) && (target.getHealth() > 0) && !(stopAttack) && (target.getMapID() == player.getMapID()) && !target.isInSafeZone()) {
			if(player.isInRange(target)) {
				//Comienza el ataque!
				int damage;
				if(maxDamage <= 0 || minDamage <= 0) {
					damage = 0;
				} else {
					damage = new Random().nextInt(maxDamage-minDamage) + minDamage;
				}
				
				//Multiplico el daño por la municion elegida, si es sab(5) x2
				if(player.selectedAmmo() == 5) {
					damage *= 2;
				} else {
					damage *= player.selectedAmmo();
				}
				
				//Si el daño es positivo y tiene municion disponible
				if((damage > 0) && (player.ammountAmmo(player.selectedAmmo()) > 0)) {
					//Selecciono el gráfico del laser
					int laserGfx = 0;
					int ammountLasers = player.activeConfig().getWeapons().getLasers().size();
					int ammountAmmo = 0;
					switch(player.selectedAmmo()) {
						case 1:
							laserGfx = 1;
							ammountAmmo = player.ammountAmmo(1) - ammountLasers;
							if(ammountAmmo <= 0) {
								ammountAmmo = 0;
							}
							player.getAmmo().setLcb10(ammountAmmo);
							break;
						case 2:
							laserGfx = 1;
							ammountAmmo = player.ammountAmmo(2) - ammountLasers;
							if(ammountAmmo <= 0) {
								ammountAmmo = 0;
							}
							player.getAmmo().setMcb25(ammountAmmo);
							break;
						case 3:
							laserGfx = 2;
							ammountAmmo = player.ammountAmmo(3) - ammountLasers;
							if(ammountAmmo <= 0) {
								ammountAmmo = 0;
							}
							player.getAmmo().setMcb50(ammountAmmo);
							break;
						case 4:
							laserGfx = 3;
							ammountAmmo = player.ammountAmmo(4) - ammountLasers;
							if(ammountAmmo <= 0) {
								ammountAmmo = 0;
							}
							player.getAmmo().setUcb100(ammountAmmo);
							break;
						case 5:
							laserGfx = 4;
							ammountAmmo = player.ammountAmmo(5) - ammountLasers;
							if(ammountAmmo <= 0) {
								ammountAmmo = 0;
							}
							player.getAmmo().setSab50(ammountAmmo);
							break;
						case 6:
							laserGfx = 6;
							ammountAmmo = player.ammountAmmo(6) - ammountLasers;
							if(ammountAmmo <= 0) {
								ammountAmmo = 0;
							}
							player.getAmmo().setRsb75(ammountAmmo);
							break;
					}
					//Actualiza la municion
					sendPacket(playerSocket, "0|B|" + player.getAmmo().getLcb10() + "|" + player.getAmmo().getMcb25() + "|" + player.getAmmo().getMcb50() + "|" + player.getAmmo().getUcb100() + "|" + player.getAmmo().getSab50() + "|" + player.getAmmo().getRsb75());
					/*
					 * Compruebo si el escudo actual es menor o igual que el daño que se le va a causar y lo pongo a 0
					 * por tanto el daño pasa a ser del 100% a la vida ^^ 
					 */
					if(!target.isInmune()) {
						// si el target no ha usado un ish
						int damageChecker = (int)(damage * target.activeConfig().getAbsorption() / 100);
						
						//Si el escudo actual es mayor que el proximo disparo y si tiene escudos equipados
						if(damageChecker <= target.activeConfig().getCurrentShield() && target.activeConfig().getGenerators().getShields().size() > 0) {
							if(player.selectedAmmo() == 5) {
								//Si la municion es SAB solo afecta al escudo
								target.activeConfig().setCurrentShield(target.activeConfig().getCurrentShield() - damage);

								if(player.activeConfig().getCurrentShield() < player.activeConfig().getShield()) {
									//Y aumenta el escudo propio
									player.activeConfig().setCurrentShield(player.activeConfig().getCurrentShield() + damage);
									sendPacket(playerSocket, "0|A|SHD|" + player.activeConfig().getCurrentShield() + "|" + player.activeConfig().getShield());
								} else {
									player.activeConfig().setCurrentShield(player.activeConfig().getShield());
									sendPacket(playerSocket, "0|A|SHD|" + player.activeConfig().getCurrentShield() + "|" + player.activeConfig().getShield());
								}
							} else {
								//El escudo es mayor que el proximo disparo
								int shieldDamage = (int)(target.activeConfig().getCurrentShield() - (damage * target.activeConfig().getAbsorption() / 100));
								int healthDamage = (int)(target.getHealth() - (damage * (100 - target.activeConfig().getAbsorption()) / 100));
								target.setHealth(healthDamage);
								target.activeConfig().setCurrentShield(shieldDamage);
							}
							
						} else {
							if(player.selectedAmmo() != 5) {
								//Ya no hay escudo por lo que el 100% va a la vida
								int healthDamage = (int)(target.getHealth() - damage);
								target.setHealth(healthDamage);
								target.activeConfig().setCurrentShield(0);
							} else {
								target.setHealth(target.getHealth());
								target.activeConfig().setCurrentShield(0);
							}
						}
					
						//Envia el daño causado | si el target no ha usado un ish
						String showDMG = "0|Y|" + player.getPlayerID() + "|" + target.getPlayerID() + "|L|" + target.getHealth() + "|" + target.activeConfig().getCurrentShield() + "|" + damage + "|100|1";
						Global.sendPacket(playerSocket, showDMG);
						Global.sendPacket(targetSocket, showDMG);
					}
					
					//Envia el laser
					String showLaser = "0|a|" + player.getPlayerID() + "|" + target.getPlayerID() + "|" + laserGfx + "|0|0";
					Global.sendPacket(playerSocket, showLaser);
					Global.sendPacket(targetSocket, showLaser);
					
				} else if(player.ammountAmmo(player.selectedAmmo()) <= 0) {
					//No tiene municion suficiente..
					Global.sendPacket(playerSocket, "0|A|STM|outofammo");
					player.isAttacking(false);
				} else {
					//No tienes daño | laseres
					Global.sendPacket(playerSocket, "0|A|STM|no_lasers_on_board");
					player.isAttacking(false);
				}
			} else if(target.isInSafeZone()) {
				sendPacket(targetSocket, "0|A|STM|peacearea");
				sendPacket(playerSocket, "0|A|STM|peacearea");
				
			} else {
				Global.sendPacket(playerSocket, "0|A|STM|outofrange");
			}
		} else {
			player.isAttacking(false);
		}
	}
}
