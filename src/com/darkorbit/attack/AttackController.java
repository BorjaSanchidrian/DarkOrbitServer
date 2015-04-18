package com.darkorbit.attack;

import java.util.Calendar;

import com.darkorbit.net.ConnectionManager;
import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.objects.Player;

public abstract class AttackController extends Global implements Runnable {
	private ConnectionManager playerCM;
	protected Player player;
	private Thread thread;
	protected boolean stopAttack;
	
	public AttackController(int playerID) {
		this.playerCM = GameManager.getConnectionManager(playerID);
		this.player = playerCM.player();
		this.stopAttack = false;
		this.thread = new Thread(this, "AttackSystem Thread player" + player.getPlayerID());
		thread.start();
	}

	public synchronized void startAttack() {
		//Comprueba si el jugador esta atacando para despertar al hilo
        if(player.isAttacking())
            notify();
    }
	
	public void run() {
		/*
		 * Usado para poder hacer thread.stop(); de forma segura
		 */
		Thread currentThread = Thread.currentThread();
		
		while(currentThread == thread) {
	        try {
				//'suspendo' el hilo mientras el jugador no ataque
	            synchronized(this) {
	                while(!player.isAttacking() && !stopAttack)
	                    wait();
	            }
	            
	            doDamage();
	            checkTarget();
	            player.setLastAttack(Calendar.getInstance().getTimeInMillis());
		        Thread.sleep(1000);
	        } catch (InterruptedException e){
	        }
		}
	}
	
	protected ConnectionManager getPlayerCM() { return playerCM; }
	
	public synchronized void close() {
		stopAttack = true;
		notifyAll();
		thread = null;
	}
	
	public abstract void doDamage();
	
	private void checkTarget() {
		if(GameManager.isOnline(player.getTargetID())) {
			//Es un usuario
			Player target = GameManager.getConnectionManager(player.getTargetID()).player();
			//Actualiza el ultimo momento que el target ha sido atacado
			target.setLastAttack(Calendar.getInstance().getTimeInMillis());

			if(target.getHealth() <= 0) {
				//kill player
				target.kill();
				GameManager.updatePlayer(target);
				
				player.isAttacking(false);
				player.setTarget(0);
			}
		}
	}
}