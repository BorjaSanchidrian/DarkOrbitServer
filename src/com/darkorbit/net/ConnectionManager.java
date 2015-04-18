package com.darkorbit.net;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Map.Entry;
import java.util.Timer;
import java.util.TimerTask;

import com.darkorbit.assemblies.LoginAssembly;
import com.darkorbit.main.Launcher;
import com.darkorbit.mysql.QueryManager;
import com.darkorbit.objects.Drone;
import com.darkorbit.objects.Laser;
import com.darkorbit.objects.Player;
import com.darkorbit.objects.Portal;
import com.darkorbit.objects.Shield;
import com.darkorbit.packets.ClientCommands;
import com.darkorbit.packets.ServerCommands;
import com.darkorbit.packets.WebCommands;
import com.darkorbit.utils.Console;

/**
 * Administra las conexiones entrantes
 */
public class ConnectionManager extends Global implements Runnable {

	private BufferedReader in;
	private Socket userSocket;
	private Thread thread;
	private Player player = null;
	private Timer timeOutTimer = null, jumpTimer = null, configTimer = null, repairTimer = null;
	
	private LoginAssembly loginAssembly;
	
	private int playerID = 0;
	private int idle = 0;
	private final int maxIdle = 24; // 1 = 25 segundos ; 24 = 600 segundos = 10 minutos
	private long lastPacket = 0;
	private boolean portalFound = false;
	private boolean configChanged = false;
	private boolean ishUsed = false, smbUsed = false, empUsed = false;
	public boolean timedOut = false;

	
	public ConnectionManager(Socket userSocket) {
		this.userSocket = userSocket;
		thread = new Thread(this);
		thread.start();
	}

	/**
	 * Inicia los streams del socket para poder leer/escribir datos
	 */
	private void setStreams() {
		try {
			//entrada
			in = new BufferedReader(new InputStreamReader(userSocket.getInputStream()));
		} catch (IOException e) {
			Console.error("There was an error setting up the socket streams...");

			if (Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * Devuelve la cuenta del jugador
	 * @return
	 */
	public Player player() {
		return player;
	}
	
	public Socket getSocket() {
		return userSocket;
	}
	
	/**
	 * Inicia el timer del timeout
	 */
	private void startTimeOut() {
		final int timeOut = 25000;
		final int minTimeOut = 10000;
		
		
		timeOutTimer = new Timer("TimeOut - Player " + playerID);
		timeOutTimer.schedule(new TimerTask() {
						
			public void run() {
				
				if(!timedOut) {
					long timeElapsed = Calendar.getInstance().getTimeInMillis() - lastPacket;
					
					//En caso de que haya pasado mas de 'timeOut' desde el ultimo paquete se inicia la desconexion 
					if(timeElapsed >= timeOut) {
						try {
							//espera otros 10 segundos mas para asegurar que el usuario se ha desconectado
							Thread.sleep(minTimeOut);
							disconnectPlayer();
							timedOut = true;
							
							Console.alert("Player " + playerID + " time-out");
						} catch (InterruptedException | IOException e) {
							if(Launcher.developmentMode) {
								e.printStackTrace();
							}
						}
					}
				}
			}
		}, 0, 30000);
		
	}
	
	
	/**
	 * Inicia el timer del timeout
	 */
	private void repairTimer() {
		repairTimer = new Timer("RepairTimer - Player " + playerID);
		repairTimer.schedule(new TimerTask() {
						
			public void run() {
				if((Calendar.getInstance().getTimeInMillis() - player.getLastAttack()) >= 5000) {
					//regeneramos el escudo
					if(player.activeConfig().getCurrentShield() < player.activeConfig().getShield() && player.activeConfig().getShield() > 1) {
						int shieldReg = (int) (player.activeConfig().getCurrentShield() + (player.activeConfig().getShield() * 0.04));
						if(shieldReg > player.activeConfig().getShield()) {
							shieldReg = player.activeConfig().getShield();
						}
						player.activeConfig().setCurrentShield(shieldReg);
						sendPacket(userSocket, "0|A|HL|0|" + player.getPlayerID() + "|SHD|" + player.activeConfig().getCurrentShield() + "|" + (int)(player.activeConfig().getShield() * 0.04));
					}
					
					if(player.getHealth() < player.getShip().getShipHealth() && player.activeConfig().haveExtra("repairBot") > 0) {
						BigDecimal percent = new BigDecimal(player.getShip().getShipHealth()).multiply(new BigDecimal(4)).divide(new BigDecimal(100));
						int healthReg = player.getHealth() + percent.intValueExact();
						
						if(healthReg > player.getShip().getShipHealth()) {
							healthReg = player.getShip().getShipHealth();
						}
						player.setHealth(healthReg);
						sendPacket(userSocket, "0|A|HL|0|" + player.getPlayerID() + "|HPT|" + player.getHealth() + "|" + percent.intValueExact());
						/*
						 * TODO: Añadir animacion de reparacion
						 * "0|D|" + player.getPosition().getX() + "|" + player.getPosition().getY() + "|0|bool|0|0|0|0"
						 */
					}	
				}
			}
		}, 0, 2000);
		
	}
	
	/**
	 * Cancela los timeOut y cierra sockets y streams
	 * @throws IOException
	 */
	public void closeConnection() throws IOException {
		if(timeOutTimer != null) {
			timeOutTimer.cancel();
			timeOutTimer.purge();
		}
		repairTimer.cancel();
		repairTimer.purge();
		player.movement().close();
		player.laserSystem().close();
		userSocket.close();
		if(GameManager.chatUsers.containsKey(playerID)) {
			GameManager.getChatUser(playerID).exit();
			GameManager.chatUsers.remove(playerID);
		}
		in.close();
	}		
	
	/**
	 * Desconecta al usuario y closeConnection() | usado en loginAssembly too
	 * @throws IOException
	 */
	public void disconnectPlayer() throws IOException {
		//Comprueba que no le esten atacando
		if((Calendar.getInstance().getTimeInMillis() - player.getLastAttack()) >= 5000) {
			//Actualiza la posicion del usuario para que al guardarla sea la "ultima conocida"
			player.movement().position();
			saveData();
			GameManager.updatePlayer(player);
			
			//Borra al usuario del mapa
			sendToMap(player.getMapID(), "0|R|" + playerID);
			Console.out("Player " + player.getPlayerID() + " disconnected or exceeded max idle time");
			GameManager.onlinePlayers.remove(playerID);
			closeConnection();
		}
	}
	
	/**
	 * Funcion aparte para la desconexion por salto en portal
	 * no tiene que cerrar sockets ni nada, solo cancelar los timers..
	 * @throws IOException
	 */
	public void jumpDisconnetion() throws IOException {
		//TODO: if(player.canDisconnect()) - por si le estan atacando, etc... (PVP) dat stuff
		
		player.laserSystem().close();
		player.movement().close();
		GameManager.onlinePlayers.remove(playerID);
		timeOutTimer.cancel();
		timeOutTimer.purge();
		repairTimer.cancel();
		repairTimer.purge();
	}
	
	/**
	 * Guarda toda la informacion necesaria..
	 */
	public void saveData() {
		savePlayerData();
		savePlayerSettings();
		savePlayerAmmo();
		GameManager.updatePlayer(player);
	}
	
	private void savePlayerData() {
		String query = "";
		/* player data */
		
			//Default player update query
			query = "UPDATE server_1_players SET ";
			
			//Actualizo y guardo la posicion del usuario
			query += "shipId=" + player.getShipID() + ", x=" + player.getPosition().getX() + ", y=" + player.getPosition().getY() + ", mapId=" + player.getMapID() + ", ";
			query += "Health=" + player.getHealth() + ", shield1=" + player.getConfig(1).getCurrentShield() + ", shield2=" + player.getConfig(2).getCurrentShield();
			query += " WHERE playerID=" + player.getPlayerID();
		
			QueryManager.updateSql(query);
			query = "";
		/* @end */
	}
	
	private void savePlayerSettings() {
		String query = "";
		/* player settings */
			
			//Default player update query
			query = "UPDATE server_1_players_settings SET ";
			
			query += "AUTO_REFINEMENT=" + player.getSettings().AUTO_REFINEMENT + ", QUICKSLOT_STOP_ATTACK=" + player.getSettings().QUICKSLOT_STOP_ATTACK + ", ";
			query += "DOUBLECLICK_ATTACK=" + player.getSettings().DOUBLECLICK_ATTACK + ", AUTO_START=" + player.getSettings().AUTO_START + ", ";
			query += "DISPLAY_NOTIFICATIONS=" + player.getSettings().DISPLAY_NOTIFICATIONS + ", SHOW_DRONES=" + player.getSettings().SHOW_DRONES + ", ";
			query += "DISPLAY_WINDOW_BACKGROUND=" + player.getSettings().DISPLAY_WINDOW_BACKGROUND + ", ALWAYS_DRAGGABLE_WINDOWS=" + player.getSettings().ALWAYS_DRAGGABLE_WINDOWS + ", ";
			query += "PRELOAD_USER_SHIPS=" + player.getSettings().PRELOAD_USER_SHIPS + ", QUICKBAR_SLOT='" + player.getSettings().QUICKBAR_SLOT + "', ";
			query += "MAINMENU_POSITION='" + player.getSettings().MAINMENU_POSITION + "', SLOTMENU_POSITION='" + player.getSettings().SLOTMENU_POSITION + "', ";
			query += "SLOTMENU_ORDER=" + player.getSettings().SLOTMENU_ORDER + ", SETTINGS='" + player.getSettings().SET + "', WINDOW_SETTINGS='" + player.getSettings().WINDOW_SETTINGS + "'";
			
			query += " WHERE playerID=" + player.getPlayerID();
			
			QueryManager.updateSql(query);
			query = "";
		/* @end */
	}
	
	private void savePlayerAmmo() {
		String query = "";
		/* player settings */
			
			//X1
			query = "UPDATE server_1_player_all_items SET ";
			query += "Q=" + player.getAmmo().getLcb10();
			query += " WHERE playerID=" + player.getPlayerID() + " AND lootid=\"ammunition_laser_lcb-10\"";
			QueryManager.updateSql(query);
			query = "";
			//X2
			query = "UPDATE server_1_player_all_items SET ";
			query += "Q=" + player.getAmmo().getMcb25();
			query += " WHERE playerID=" + player.getPlayerID() + " AND lootid=\"ammunition_laser_mcb-25\"";
			QueryManager.updateSql(query);
			query = "";
			//X3
			query = "UPDATE server_1_player_all_items SET ";
			query += "Q=" + player.getAmmo().getMcb50();
			query += " WHERE playerID=" + player.getPlayerID() + " AND lootid=\"ammunition_laser_mcb-50\"";
			QueryManager.updateSql(query);
			query = "";
			//X4
			query = "UPDATE server_1_player_all_items SET ";
			query += "Q=" + player.getAmmo().getUcb100();
			query += " WHERE playerID=" + player.getPlayerID() + " AND lootid=\"ammunition_laser_ucb-100\"";
			QueryManager.updateSql(query);
			query = "";
			//SAB
			query = "UPDATE server_1_player_all_items SET ";
			query += "Q=" + player.getAmmo().getSab50();
			query += " WHERE playerID=" + player.getPlayerID() + " AND lootid=\"ammunition_laser_sab-50\"";
			QueryManager.updateSql(query);
			query = "";
		/* @end */
	}
	
	/**
	 * Lee la entrada del socket
	 */
	public void run() {
		//Llama a la funcion de arriba
		setStreams();
		
		try {
			String packet = "";
			char[] packetChar = new char[1];
			
			while(in.read(packetChar, 0, 1) != -1) {
				//Comprueba que el caracter no sea ni nulo, espacio en blanco, linea nueva
				if(packetChar[0] != '\u0000' && packetChar[0] != '\n' && packetChar[0] != '\r') {
					//Si no aï¿½ade el caracter a packet
					packet += packetChar[0];
					
				} else if(!packet.isEmpty()) {
					packet = new String(packet.getBytes(), "UTF-8");
					
					checkPacket(packet);
					lastPacket = Calendar.getInstance().getTimeInMillis();
					
					/*
					 * Si el paquete es un ping aumento la variable idle en 1, sino resto 1...
					 * 
					 * De esta forma si se reciven X pings seguidos se considera timeOut
					 */
					if(packet.equals("PNG")) {
						if(idle >= (maxIdle - 1)) {
							disconnectPlayer();
						} else {
							idle++;
						}
					} else {
						idle = 0;
					}
					
					//Set the packet again to ""
					packet = "";
				}
			}
		} catch(IOException e) {
			Console.alert("User disconnected. Socket closed.");
			
			//Un poco chapuza, pero no se me ocurre ahora mismo algo mejor :(
			try {
				closeConnection();
			} catch (IOException e1) {}
		}
	}
	
	
	/**
	 * Lee e interpreta los paquetes recibidos.
	 * @param packet Paquete enviado desde run
	 */
	private void checkPacket(String packet) {
		//Si el modo desarrollador esta activado se leen los paquetes entrantes
		if(Launcher.developmentMode) {
			Console.alert("Packet from user-" + playerID + ": " + packet);
		}
		
		if(packet.startsWith("/")) {
			String[] p = packet.split(" ");
			
			switch(p[0]) {
				case "/p":
					//Envia un paquete directamente al juego
					try {
						sendToAll(p[1]);
					} catch(Exception e) {
						if(Launcher.developmentMode) {
							e.printStackTrace();
						}
					}
					break;
				
				// /repair <playerID> - Repair the choosen player
				case "/repair":
					try {
						int playerID = Integer.parseInt(p[1]);
						
						for(Entry<Integer, ConnectionManager> us : GameManager.onlinePlayers.entrySet()) {
							if(us.getValue().player().getPlayerID() == playerID) {
								us.getValue().player().setHealth(us.getValue().player().getShip().getShipHealth());
								us.getValue().player().activeConfig().setCurrentShield(us.getValue().player().activeConfig().getShield());
								sendPacket(us.getValue().getSocket(), "0|A|HPT|" + us.getValue().player().getShip().getShipHealth() + "|" + us.getValue().player().getShip().getShipHealth());
								sendPacket(us.getValue().getSocket(), "0|A|SHD|" + us.getValue().player().activeConfig().getShield() + "|" + us.getValue().player().activeConfig().getShield());
							}
						}
					} catch(Exception e) {
						
					}
					break;
				
				// /portalsRange <true/false> - Shows the portal range (development tool)
				case "/portalsRange":
					try {
						if(Boolean.parseBoolean(p[1]) == true) {
							for(Entry<Integer, Portal> p2 : GameManager.portals.entrySet()) {
								if(player.getMapID() == p2.getValue().getMapID()) {
									p2.getValue().drawRange();
								}
							}
						} else {
							for(Entry<Integer, Integer> ship : GameManager.rangeShips.entrySet()) {
								sendToMap(player.getMapID(), "0|n|EMP|" + (ship.getValue() - 1));
								sendToMap(player.getMapID(), "0|K|" + (ship.getValue() - 1)); //No me preguntes muy bien porque xD
							}
						}
						
					} catch(Exception e) {
						sendPacket(userSocket, "0|A|STM|wrong_packet_parameter");
						if(Launcher.developmentMode) {
							e.printStackTrace();
						}
					}
					break;
				
				// /close <seconds> - Shutdown the server
				case "/close":
					try {
						int seconds = Integer.parseInt(p[1]);
						Timer closeTimer = new Timer("closeTimer");
						closeTimer.schedule(new TimerTask() {
							public void run() {
								if(seconds >= 0) {
									for(int i=seconds; i>0; i--) {
										sendToAll("0|A|STM|server_close_n_seconds|" + i);
										Console.alert("Closing server in " + i);
										try {
											Thread.sleep(1000);
										} catch (InterruptedException ignore) { }
									}
									
									for(Entry<Integer, ConnectionManager> c : GameManager.onlinePlayers.entrySet()) {
										try {
											c.getValue().disconnectPlayer();
										} catch (IOException ignore) { }
									}
									Console.out("Server shutdown");
									System.exit(0);
								}
								
								closeTimer.cancel();
								closeTimer.purge();
							}
						}, 0);
					} catch(Exception e) {
						sendPacket(userSocket, "0|A|STD|You should introduce the ammount of time (in seconds)");
					}
					break;
					
				// /msg <message> - sends a global message
				case "/msg":
					try {
						String msg = "";
						for(int i=1; i<p.length; i++) {
							msg += p[i] + " ";
						}
						sendToAll("0|A|STD|" + msg + "\nGlobal message from: " + player.getUserName());
					} catch(Exception e) {
						sendPacket(userSocket, "0|A|STD|Introducce the message!");
					}
					break;
			}
			
		} else {
			String[] p = packet.split("\\|");
			
			switch(p[0]) {
			/* #############################WEB PACKETS############################# */
				case WebCommands.WEB_PACKET:
					switch(p[1]) {
						case WebCommands.EQUIPMENT_UPDATE:
							QueryManager.webEquipment(packet);
							break;
							
						case WebCommands.DRONE_EQUIPMENT_UPDATE:
							//webPacket|droneEquipment|DRONEID|PLAYERID|CONFIGNUM|ITEMS[]
							QueryManager.webEquipment(packet);
							break;
						
						case WebCommands.BUY_DRONE:
							//Obtengo la cuenta del jugador que compra el vant
							//webPacket|buydrone|".$playerID."|".$kind."|".$item_id
							int playerID = Integer.parseInt(p[2]);
							
							if(GameManager.isOnline(playerID)) {
								player = GameManager.getConnectionManager(playerID).player();
							} else if(GameManager.playersMap.containsKey(playerID)) {
								//ha estado conectado
								player = GameManager.getPlayer(playerID);
							} else {
								player = QueryManager.loadAccount(playerID);
							}
							
							String lootID = p[3].split("_")[1];
							
							//Drone(int id, int level, String type, List<Shield> shields, List<Laser> lasers, String design) {
							player.getConfig(1).getDrones().add(new Drone(player.getPlayerID(), 0, lootID, new ArrayList<Shield>(), new ArrayList<Laser>(), ""));
							player.getConfig(2).getDrones().add(new Drone(player.getPlayerID(), 0, lootID, new ArrayList<Shield>(), new ArrayList<Laser>(), ""));
							
							//Actualizo el mapa
							GameManager.updatePlayer(player);
							
							if(GameManager.isOnline(player.getPlayerID())) {
								ConnectionManager playerCM = GameManager.getConnectionManager(player.getPlayerID());
								
								sendToMap(playerCM.player().getMapID(), LoginAssembly.setDrones(playerCM.player()));
							}
							break;
							
						case WebCommands.OBJECT_BOUGHT:
							//webPacket|objectBought|itemID|lootID
							GameManager.addObject(Integer.parseInt(p[2]), p[3]);
							break;
							
						case WebCommands.BUY_AMMO:
							//webPacket|buyAmmo|lootID|ammount|playerID
							if(GameManager.isOnline(Integer.parseInt(p[4]))) {
								player = GameManager.getConnectionManager(Integer.parseInt(p[4])).player();
							} else if(GameManager.playersMap.containsKey(Integer.parseInt(p[4]))) {
								//ha estado conectado
								player = GameManager.getPlayer(Integer.parseInt(p[4]));
							} else {
								player = QueryManager.loadAccount(Integer.parseInt(p[4]));
							}
							
							//Actualiza la municion!
							int ammount = Integer.parseInt(p[3]);
							
							switch(p[2]) {
								case "lcb-10":
									player.getAmmo().setLcb10(player.getAmmo().getLcb10() + ammount);
									break;
								case "mcb-25":
									player.getAmmo().setMcb25(player.getAmmo().getMcb25() + ammount);
									break;
								case "mcb-50":
									player.getAmmo().setMcb50(player.getAmmo().getMcb50() + ammount);
									break;
								case "sab-50":
									player.getAmmo().setSab50(player.getAmmo().getSab50() + ammount);
									break;
								case "ucb-100":
									player.getAmmo().setUcb100(player.getAmmo().getUcb100() + ammount);
									break;
								case "rsb-75":
									player.getAmmo().setRsb75(player.getAmmo().getRsb75() + ammount);
									break;
							}
							
							//Actualiza la municion TODO: Añadir misiles!
							if(GameManager.isOnline(player.getPlayerID())) {
								ConnectionManager playerCM = GameManager.getConnectionManager(player.getPlayerID());
								sendPacket(playerCM.getSocket(), "0|B|" + player.getAmmo().getLcb10() + "|" + player.getAmmo().getMcb25() + "|" + player.getAmmo().getMcb50() + "|" + player.getAmmo().getUcb100() + "|" + player.getAmmo().getSab50() + "|" + player.getAmmo().getRsb75());
							}
							
							//Actualizo el mapa
							GameManager.updatePlayer(player);
							break;
							
						case WebCommands.WIPE_CONFIG:
							//webPacket|wipeConfig|configNum|playerID
							if(GameManager.isOnline(Integer.parseInt(p[3]))) {
								player = GameManager.getConnectionManager(Integer.parseInt(p[3])).player();
							} else if(GameManager.playersMap.containsKey(Integer.parseInt(p[3]))) {
								//ha estado conectado
								player = GameManager.getPlayer(Integer.parseInt(p[3]));
							} else {
								player = QueryManager.loadAccount(Integer.parseInt(p[3]));
							}
							
							if(player.getConfig(Integer.parseInt(p[2])).wipeConfig()) {
								if(GameManager.isOnline(player.getPlayerID())) {
									ConnectionManager playerCM = GameManager.getConnectionManager(player.getPlayerID());
									
									//Actualiza los drones (los diseños ^^)
									sendToMap(playerCM.player().getMapID(), LoginAssembly.setDrones(playerCM.player()));
									//Actualizo el escudo si tiene seleccionada la configuracion "wipeada" XD
									if(player.activeConfig().equals(player.getConfig(Integer.parseInt(p[2])))) {
										sendPacket(playerCM.getSocket(), "0|A|SHD|" + player.activeConfig().getCurrentShield() + "|" + player.activeConfig().getShield());
									}
									//Acutalizo los extras | en caso de editar hacerlo en loginAssembly y copiar luego
									sendPacket(playerCM.getSocket(), "0|A|ITM|0|0|0|0|" + player.activeConfig().haveExtra("repairBot") + "|0|0|" + player.activeConfig().haveExtra("smb-01") + "|" + player.activeConfig().haveExtra("ish-01") + "|0|0|0|0|0|0|0");
								}
							}
							
							//Actualizo el mapa
							GameManager.updatePlayer(player);
							break;
							
						case WebCommands.SHIP_MODEL:
							//webPacket|shipModel|lootID|playerID
							if(GameManager.isOnline(Integer.parseInt(p[3]))) {
								player = GameManager.getConnectionManager(Integer.parseInt(p[3])).player();
							} else if(GameManager.playersMap.containsKey(Integer.parseInt(p[3]))) {
								//ha estado conectado
								player = GameManager.getPlayer(Integer.parseInt(p[3]));
							} else {
								player = QueryManager.loadAccount(Integer.parseInt(p[3]));
							}
							
							short shipID = 0;
							String[] modelID = p[2].split("_");
							//ship_goliath_design_bastion
							switch(modelID[1]) {
								case "goliath":
									if(modelID.length > 2) {
										switch(modelID[3]) {
											case "bastion":
												shipID = 59;
												break;
											case "amber":
												shipID = 52;
												break;
											case "centaur":
												shipID = 110;
												break;
											case "crimson":
												shipID = 53;
												break;
											case "diminisher":
												shipID = 64;
												break;
											case "enforcer":
												shipID = 56;
												break;
											case "exalted":
												shipID = 62;
												break;
											case "veteran":
												shipID = 61;
												break;
											case "goal":
												shipID = 88;
												break;
											case "ignite":
												shipID = 68;
												break;
											case "independence":
												shipID = 57;
												break;
											case "jade":
												shipID = 86;
												break;
											case "kick":
												shipID = 55;
												break;
											case "referee":
												shipID = 87;
												break;
											case "sapphire":
												shipID = 54;
												break;
											case "sentinel":
												shipID = 66;
												break;
											case "solace":
												shipID = 63;
												break;
											case "spectrum":
												shipID = 65;
												break;
											case "venom":
												shipID = 67;
												break;
											case "saturn":
												shipID = 109;
												break;
										}
									} else {
										shipID = 10;
									}
									break;
								case "vengeance":
									if(modelID.length > 2) {
										switch(modelID[3]) {
											case "avenger":
												shipID = 60;
												break;
											case "adept":
												shipID = 16;
												break;
											case "corsair":
												shipID = 17;
												break;
											case "lightning":
												shipID = 18;
												break;
											case "revenge":
												shipID = 58;
												break;
										}
									} else {
										shipID = 8;
									}
									break;
							}
							
							player.setShip(shipID);
							//Actualizo el mapa
							GameManager.updatePlayer(player);
							break;
					}
					break;
					
			/* ############################GAME PACKETS############################# */
				case ServerCommands.REQUEST_POLICY:
					//Envia la informacion necesaria al cliente para la conexion
					sendPolicy(userSocket);
					break;

				case ServerCommands.REQUEST_LOGIN:
					//LOGIN|playerID|sessionID|clientVersion
					/*
					 * TODO: Solucionar el problema de que se pueda enviar un paquete de login desde un socket falso
					 * La solucion que se me ocurre es usar el sessionID y si se rechaza la conexion bloquear cualquier otro tipo de paquete.
					 * es decir, que no se puedan mandar paquetes de movimiento, etc... sin "autorizacion"
					 */
					
					try {
						
						//Comprueba que el paquete este completo y la version del cliente sea correcta
						if((p.length == 4) && (p[3].equals(Launcher.clientVersion))) {
							
							/*
							 * IF THE LOGIN ACCEPTS THE CONNECTION!!
							 */
							loginAssembly = new LoginAssembly(userSocket);
							
							//Comprueba si puede loguearse
							if(loginAssembly.requestLogin(p)) {
								
								//Set the playerID and threadName
								player = loginAssembly.getPlayer();
								player.setSessionID(loginAssembly.getSessionID());
								playerID = player.getPlayerID();

								//Aï¿½ade el connectionManager al de jugadores online
								GameManager.connectPlayer(this);
								
								//Inicia los sistemas del player
								player.setSystems();
								
								thread.setName("ConnectionManager-User_" + player.getPlayerID());
								
								//Inicia el timeout
								startTimeOut();
								repairTimer();
							} else {
								//sino se cierra su socket
								closeConnection();
								
							}
						} else {
							Console.error("Error with the login packet...");
							closeConnection();
						}
						
					} catch(Exception e) {
						//En caso de que el paquete falle :/
						if(Launcher.developmentMode) {
							e.printStackTrace();
						}
						
						try {
							closeConnection();
						} catch (IOException e1) {}
					}
					break;
					
				case ServerCommands.SHIP_MOVEMENT:
					//1|newX|newY|oldX|oldY => Mueve la nave
					player.movement().moveShip(p);
					break;
				
				case ClientCommands.PORTAL_JUMP:
					//Cuando se pulsa la 'j'
					portalFound = false;
					for(Entry<Integer, Portal> portal : GameManager.portals.entrySet()) {
						
						//Si el jugador esta en el mismo mapa que el portal..
						if(player.getMapID() == portal.getValue().getMapID()) {
							
							//Comprueba que el jugador no este ya saltando..
							if(!player.isJumping()) {
								if(player.isInRange(portal.getValue())) {
									
									//Si el jugador tiene al menos el nivel requerido del portal
									if(player.getLevel() >= portal.getValue().requiredLevel()) {
										//El jugador esta en rango, ejecuto el salto!
										
										portalFound = true; /* para bloquear el mensaje de portal no encontrado generado por el bucle for */
										
										player.isJumping(true);
										
										jumpTimer = new Timer("Player" + player.getPlayerID() + " Jump Timer");
										jumpTimer.schedule(new TimerTask(){
											public void run() {
												try {
													//Jump time :)
													sendPacket(userSocket, "0|U|99|" + portal.getValue().getPortalID());
													Thread.sleep(3250); //tiempo de salto..
													
													//Borra el grafico del usuario..
													sendToMap(player.getMapID(), "0|R|" + player.getPlayerID());
													
													GameManager.getConnectionManager(player.getPlayerID()).jumpDisconnetion();
													
													player.setPosition(portal.getValue().getDestination());
													player.setMapID(portal.getValue().getToMapID());
													player.setTarget(0);
													player.isAttacking(false);
													saveData();
													
													//Creo un nuevo paquete de conexion y magic :D
													String loginPacket = "LOGIN|" + player.getPlayerID() + "|" + player.getSessionID() + "|" + Launcher.clientVersion;
													checkPacket(loginPacket);
													
													Console.out("Player " + player.getPlayerID() + " jumped to mapID=" + portal.getValue().getToMapID());
													
													player.isJumping(false);
													portalFound = false;
												} catch (InterruptedException | IOException e) {
													e.printStackTrace();
												}
												
												jumpTimer.cancel();
												jumpTimer.purge();
											}
										}, 0);
										
										break;
										
									} else {
										//El jugador no tiene el nivel necesario
										portalFound = true;
										sendPacket(userSocket, "0|A|STM|jumplevelfalse|" + portal.getValue().requiredLevel());
										break;
									}
								}
							}
						}
					} /*@end for*/
					
					//Si no se ha encontrado un portal y el usuario no esta saltando--
					 if(!portalFound && !player.isJumping()) {
							//No esta en rango, mando paquete que avisa de ello..
							sendPacket(userSocket, "0|A|STM|jumpgate_failed_no_gate");
					 }
					
					break;
					
				case ServerCommands.SELECT:
					//0|N|TargetID|TargetShipID|shd|getMaxShield()|hp|maxHp|shieldSkill
					int targetID = Integer.parseInt(p[1]);
					
					if(GameManager.isOnline(targetID)) {
						//Si el objetivo en un usuario
						Player target = GameManager.getConnectionManager(targetID).player();
						if(target.canBeClicked()) {
							sendPacket(userSocket, "0|N|" + targetID + "|" + target.getShipID() + "|" + target.activeConfig().getCurrentShield() + "|" + target.activeConfig().getShield() + "|" + target.getHealth() + "|" + target.getShip().getShipHealth() + "|0");
							player.isPlayer(true);
							player.setTarget(targetID);
						}
					} else {
						//Es un NPC
					}
					break;
				
				case "b":
					sendPacket(userSocket, "0|A|STD|Damage: " + player.activeConfig().getDamage());
					sendPacket(userSocket, "0|A|STD|Absorption: " + player.activeConfig().getAbsorption());
					break;
					
				case ClientCommands.SELECT_LASER:
					player.selectedAmmo(Integer.parseInt(p[1]));
					break;
					
				case ServerCommands.LASER_ATTACK:
					player.isAttacking(true);
					player.laserSystem().startAttack();
					break;
					
				case ClientCommands.LASER_STOP:
					player.isAttacking(false);
					if(player.isPlayer()) {
						//Se ha cancelado la pelea
						sendPacket(userSocket, "0|F");
						
						if(GameManager.isOnline(player.getTargetID())) {
							//Tu oponente ha cancelado la pelea
							ConnectionManager target = GameManager.getConnectionManager(player.getTargetID());
							sendPacket(target.getSocket(), "0|J");
						}
						
					}
					break;

				/*
				 * Cuando el jugador cambia alguna opcion del cliente :D
				 */
				case ServerCommands.CLIENT_SETTING:
					try {
						switch(p[1]) {
							case "AUTO_REFINEMENT":
								player.getSettings().AUTO_REFINEMENT = p[2];
								break;
								
							case "QUICKSLOT_STOP_ATTACK":
								player.getSettings().QUICKSLOT_STOP_ATTACK = p[2];
								break;
								
							case "DOUBLECLICK_ATTACK":
								player.getSettings().DOUBLECLICK_ATTACK = p[2];
								break;
								
							case "AUTO_START":
								player.getSettings().AUTO_START = p[2];
								break;
								
							case "DISPLAY_NOTIFICATIONS":
								player.getSettings().DISPLAY_NOTIFICATIONS = p[2];
								break;
								
							case "SHOW_DRONES":
								player.getSettings().SHOW_DRONES = p[2];
								break;
								
							case "DISPLAY_WINDOW_BACKGROUND":
								player.getSettings().DISPLAY_WINDOW_BACKGROUND = p[2];
								break;
								
							case "ALWAYS_DRAGGABLE_WINDOWS":
								player.getSettings().ALWAYS_DRAGGABLE_WINDOWS = p[2];
								break;
								
							case "PRELOAD_USER_SHIPS":
								player.getSettings().PRELOAD_USER_SHIPS = p[2];
								break;
								
							case "QUICKBAR_SLOT":
								player.getSettings().QUICKBAR_SLOT = p[2];
								break;
								
							case "MAINMENU_POSITION,3":
								player.getSettings().MAINMENU_POSITION = p[2];
								break;
								
							case "SLOTMENU_POSITION,3":
								player.getSettings().SLOTMENU_POSITION = p[2];
								break;
								
							case "SLOTMENU_ORDER,3":
								player.getSettings().SLOTMENU_ORDER = p[2];
								break;
								
							case "WINDOW_SETTINGS,3":
								player.getSettings().WINDOW_SETTINGS = p[2];
								break;
							
						}
						
						savePlayerSettings();
					} catch(Exception e) {
						if(Launcher.developmentMode) e.printStackTrace();
					}
					break;
					
				/*
				 * 
				 */
				case ServerCommands.SET_ATTRIBUTE:
					/*
					 * Mas opciones del cliente como el switch de arriba..
					 */
					if(p[1].equals(ServerCommands.SET_FLASH_SETTINGS)) {
						/*
						 * El paquete es 0|A|SET|1|0|0|1|.... => 27 elementos
						 */
						String paket = "";
						for(int i=2; i<27; i++) {
							paket += "|" + p[i];
						}
						
						player.getSettings().SET = paket;
					}
					break;
					
				case ClientCommands.SELECT:
					switch(p[1]) {
						case ClientCommands.CONFIGURATION:
							if(!configChanged) {
								configChanged = true; /* para bloquear que se cambie de config antes de 5 seg */
								
								configTimer = new Timer("Player" + player.getPlayerID() + " Jump Timer");
								configTimer.schedule(new TimerTask(){
									public void run() {
										try {
											//Cambio de config
											if(Integer.parseInt(p[2]) == 1) {
												sendPacket(userSocket, "0|S|CFG|1");
												player.activeConfig(1);
											} else {
												sendPacket(userSocket, "0|S|CFG|2");
												player.activeConfig(2);
											}
											
											//Si el escudo actual es mayo que el total, se igualan
											if(player.activeConfig().getCurrentShield() > player.activeConfig().getShield()) {
												player.activeConfig().setCurrentShield(player.activeConfig().getShield());
											}
											
											sendPacket(userSocket, "0|A|SHD|" + player.activeConfig().getCurrentShield() + "|" + player.activeConfig().getShield());
											//Acutalizo los extras | en caso de editar hacerlo en loginAssembly y copiar luego
											sendPacket(userSocket, "0|A|ITM|0|0|0|0|" + player.activeConfig().haveExtra("repairBot") + "|0|0|" + player.activeConfig().haveExtra("smb-01") + "|" + player.activeConfig().haveExtra("ish-01") + "|0|0|0|0|0|0|0");
											//Actualiza los drones (los diseños ^^)
											sendToMap(player.getMapID(), LoginAssembly.setDrones(player));
											/*
											 * La velocidad se actualiza sola porque se coge directamente en el movementSystem.
											 * Al igual que el daño
											 */
											
											for(Entry<Integer, ConnectionManager> on : GameManager.onlinePlayers.entrySet()) {
												/*Si algun jugador del mismo mapa que yo, me tiene selecionado mando de nuevo el paquete de 
												 * seleccion con el escudo actualizado
												 * 
												 * 0|N|TargetID|TargetShipID|shd|getMaxShield()|hp|maxHp|shieldSkill
												 */
												if(on.getValue().player().getMapID() == player.getMapID() && on.getValue().player().getTargetID() == player.getPlayerID()) {
													sendPacket(on.getValue().getSocket(), "0|N|" + player().getPlayerID() + "|" + player().getShipID() 
															+ "|" + player().activeConfig().getCurrentShield() + "|" + player.activeConfig().getShield()
															+ "|" + player().getHealth() + "|" + player.getShip().getShipHealth() + "|0");
												}
											}
											
											Thread.sleep(5000);
											
											configChanged = false;
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										
										configTimer.cancel();
										configTimer.purge();
									}
								}, 0);
							} else {
								sendPacket(userSocket, "0|A|STM|config_change_failed_time");
							}
							break;
							
						case ServerCommands.INSTASHIELD:
							if(!ishUsed) {
								ishUsed = true;
								Timer ishTimer = new Timer("Player" + player.getPlayerID() + " Ish Cooldown");
								ishTimer.schedule(new TimerTask() {
									public void run() {
										try {
											player.isInmune(true);
											sendToMap(player.getMapID(), "0|n|ISH|" + player.getPlayerID());
											//30 seg de cooldown (?)
											sendPacket(userSocket, "0|A|CLD|ISH|30");
											Thread.sleep(3000);
											player.isInmune(false);
											Thread.sleep(30000);
											ishUsed = false;
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										ishTimer.cancel();
										ishTimer.purge();
									}
								}, 0);
							}
							break;
							
						case ServerCommands.SMARTBOMB:
							if(!smbUsed) {
								smbUsed = true;
								Timer smbTimer = new Timer("Player" + player.getPlayerID() + " Smb Cooldown");
								smbTimer.schedule(new TimerTask() {
									public void run() {
										try {
											sendToMap(player.getMapID(), "0|n|SMB|" + player.getPlayerID());
											/*
											 * Hacer daño en area xD
											 */
											for(Entry<Integer, ConnectionManager> o : GameManager.onlinePlayers.entrySet()) {
												if(o.getValue().player().getMapID() == player.getMapID() && player.isInRange(o.getValue().player()) && o.getValue().player().getPlayerID() != player.getPlayerID()) {
													//el 20% de su vida
													int damage = (int)(o.getValue().player().getHealth() * 0.2);
													Player target = o.getValue().player();
													Socket targetSocket = o.getValue().getSocket();
													
													if(!target.isInmune()) {
														int damageChecker = (int)(damage * target.activeConfig().getAbsorption() / 100);
														if(damageChecker <= target.activeConfig().getCurrentShield()) {
															//El escudo es mayor que el daño
															int shieldDamage = (int)(target.activeConfig().getCurrentShield() - (damage * target.activeConfig().getAbsorption() / 100));
															int healthDamage = (int)(target.getHealth() + (damage * (1 - target.activeConfig().getAbsorption()) / 100));
															target.setHealth(healthDamage);
															target.activeConfig().setCurrentShield(shieldDamage);
														} else {
															//Ya no hay escudo por lo que el 100% va a la vida
															int healthDamage = (int)(target.getHealth() - (damage * target.activeConfig().getAbsorption() / 100));
															target.setHealth(healthDamage);
															target.activeConfig().setCurrentShield(0);
														}
													
														//Envia el daño causado | si el target no ha usado un ish
														String showDMG = "0|Y|" + player.getPlayerID() + "|" + target.getPlayerID() + "|SMB|" + target.getHealth() + "|" + target.activeConfig().getCurrentShield() + "|" + damage + "|100|1";
														Global.sendPacket(userSocket, showDMG);
														Global.sendPacket(targetSocket, showDMG);
														target.setLastAttack(Calendar.getInstance().getTimeInMillis());
														player.setLastAttack(Calendar.getInstance().getTimeInMillis());
													}
												}
											}
											
											//30 seg de cooldown (?)
											sendPacket(userSocket, "0|A|CLD|SMB|30");
											Thread.sleep(30000);
											smbUsed = false;
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										smbTimer.cancel();
										smbTimer.purge();
									}
								}, 0);
							}
							break;
							
						case ServerCommands.EMP:
							if(!empUsed) {
								empUsed = true;
								Timer empTimer = new Timer("Player" + player.getPlayerID() + " Emp Cooldown");
								empTimer.schedule(new TimerTask() {
									public void run() {
										try {
											player.canBeClicked(false);
											sendToMap(player.getMapID(), "0|n|EMP|" + player.getPlayerID());
											for(Entry<Integer, ConnectionManager> o : GameManager.onlinePlayers.entrySet()) {
												if(o.getValue().player().getPlayerID() != player.getPlayerID() && o.getValue().player().getTargetID() == player.getPlayerID()) {
													//Deseleciona al usuario
													sendPacket(o.getValue().getSocket(), "0|N|0");
													o.getValue().player().isAttacking(false);
												}
											}
											//30 seg de cooldown (?)
											sendPacket(userSocket, "0|A|CLD|EMP|30");
											Thread.sleep(3000);
											player.canBeClicked(true);
											Thread.sleep(30000);
											empUsed = false;
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										empTimer.cancel();
										empTimer.purge();
									}
								}, 0);
							}
							break;
					}
					break;
			}
		}
	}
}