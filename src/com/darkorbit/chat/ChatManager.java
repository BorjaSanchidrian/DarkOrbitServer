package com.darkorbit.chat;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.Calendar;
import java.util.Date;
import java.util.Map.Entry;
import java.util.Timer;
import java.util.TimerTask;

import com.darkorbit.main.Launcher;
import com.darkorbit.mysql.QueryManager;
import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.objects.Player;
import com.darkorbit.utils.Console;

public class ChatManager extends Global implements Runnable {
	
	private Socket userSocket;
	private Thread thread;
	private BufferedReader in;
	private Player player;
	private Timer pngTimer = null;
	
	public ChatManager(Socket userSocket) {
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
	
	public Player player() {
		return player;
	}
	
	public Socket getSocket() {
		return userSocket;
	}
	
	public void exit() {
		try {
			pngTimer.cancel();
			pngTimer.purge();
			userSocket.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void run() {
		//Llama a la funcion de arriba
		setStreams();
		
		try {
			String packet = "";
			char[] packetChar = new char[1];
			
			while(in.read(packetChar, 0, 1) != -1) {
				//Comprueba que el caracter no sea ni nulo, espacio en blanco, linea nueva
				if(packetChar[0] != '\u0000' && packetChar[0] != '\n' && packetChar[0] != '\r') {
					//Si no a�ade el caracter a packet
					packet += packetChar[0];
					
				} else if(!packet.isEmpty()) {
					packet = new String(packet.getBytes(), "UTF-8");
					checkPacket(packet);
					//Set the packet again to ""
					packet = "";
				}
			}
		} catch(IOException e) {
			//Console.alert("Couldn't read chat packet..");
		}
	}
	
	public String getMessage(int j, String msg) {
		String[] split = msg.split(" ");
		String returnMsg = null;
		for(int i=j; i<split.length; i++) {
			if(returnMsg == null) {
				returnMsg = split[i];
			} else {
				returnMsg += " " + split[i];
			}
		}
		return returnMsg;
	}
	
	public void pngTimer() {
		pngTimer = new Timer();
		pngTimer.schedule(new TimerTask() {
			public void run() {
				sendPacket(userSocket, "ek#");
			}
		}, 0, 25000);
	}
	
	public void send(String msg) {
		for(Entry<Integer, ChatManager> u : GameManager.chatUsers.entrySet()) {
			sendPacket(u.getValue().getSocket(), msg);
		}
	}
	
	public void checkPacket(String packet) {
		if(packet.equals("<policy-file-request/>")) {
			sendPolicy(userSocket);
		} else if(packet.startsWith("bu")) {
			String[] p = packet.replace("@", "%").split("%");
			
			int playerID = Integer.parseInt(p[3]);
			//CHECK THIS long sessionID = Long.parseLong(p[4]);
			
			//TODO: check sessionID
			if(GameManager.isOnline(playerID)) {
				//Conexion aceptada
				player = GameManager.getConnectionManager(playerID).player();
				GameManager.addChatUser(this);

				/*if(QueryManager.chatBanned(playerID)) {
					sendPacket(userSocket, "dq%You're banned until xx:xx of XX-XX-XX (WIP)!!");
					exit();
				}*/
				
				/*
				 * Si es un jugador normal se mandan las salas de chat normales.
				 * 
				 * Si es admin se mandan todas + admin room :P
				 */
				if(!player.isAdmin()) {
					switch(player.getFactionID()) {
						//MMO
						case 1:
							sendPacket(userSocket, "by%1|Global|1|-1|0|0}2|MMO|2|-1|0|0}5|Clan Search|3|-1|0|0#");
							break;
							
						//EIC
						case 2:
							sendPacket(userSocket, "by%1|Global|1|-1|0|0}3|EIC|2|-1|0|0}5|Clan Search|3|-1|0|0#");
							break;
							
						//VRU
						case 3:
							sendPacket(userSocket, "by%1|Global|1|-1|0|0}4|VRU|2|-1|0|0}5|Clan Search|3|-1|0|0#");
							break;
					}
				} else {
					sendPacket(userSocket, "by%1|Global|1|-1|0|0}2|MMO|2|-1|0|0}3|EIC|3|-1|0|0}4|VRU|4|-1|0|0}5|Clan Search|5|-1|0|0}6|Admin Room|6|-1|0|0#");
				}
				sendPacket(userSocket, "bv%" + playerID + "#");
				//Start the png timer
				pngTimer();
			}
		} else if(packet.startsWith("a") && player != null) {
			String[] p = packet.replace("@", "%").split("%");
			
			int roomID = Integer.parseInt(p[1]);
			String msg = p[2];
			String[] splitMsg = msg.split(" ");
			String cmd = msg.split(" ")[0];

			switch(cmd) {
				case "/users":
					int num = 0;
					for(@SuppressWarnings("unused") Entry<Integer, ChatManager> u : GameManager.chatUsers.entrySet()) {
						num++;
					}
					sendPacket(userSocket, "dq%" + num + " players online#");
					break;
				case "/system":
					if(player.isAdmin()) {
						send("dq%" + getMessage(1, msg) + "  {" + player().getUserName() + "}#");
					} else {
						sendPacket(userSocket, "dq%Sorry, but you don't have the rights to do this!#");
					}
					break;
				case "/w":
					try {
						for(Entry<Integer, ChatManager> u : GameManager.chatUsers.entrySet()) {
							if(u.getValue().player().getUserName().equals(splitMsg[1])) {
								if(!u.getValue().player().isAdmin()) {
									sendPacket(userSocket, "cw%" + splitMsg[1] + "@" + getMessage(2, msg) + "#");
									sendPacket(u.getValue().getSocket(), "cv%" + player().getUserName() + "@" + getMessage(2, msg) + "#");
								} else {
									sendPacket(userSocket, "dq%Sorry, but you don't have the rights to do this!#");
								}
							} else if(u.getValue().player().getUserName().equals(player.getUserName())) {
								sendPacket(userSocket, ChatCommand.CMD_CANNOT_WHISPER_YOURSELF + ChatCommand.END);
							} else {
								sendPacket(userSocket, ChatCommand.CMD_USER_NOT_EXIST + ChatCommand.END);
							}
						}
					} catch(Exception e) {
						//Se envia un /w a secas
					}
					break;
				case "/kick":
					try {
						if(player().isAdmin()) {
							for(Entry<Integer, ChatManager> u : GameManager.chatUsers.entrySet()) {
								if(u.getValue().player.getUserName().equals(splitMsg[1])) {
									sendPacket(u.getValue().getSocket(), "as%#");
									u.getValue().exit();
									sendPacket(userSocket, "dq%You kicked " + u.getValue().player.getUserName() + "!#");
								}
							}
						} else {
							sendPacket(userSocket, "dq%Sorry, but you don't have the rights to do this!#");
						}
						
					} catch(Exception e) {
						//Se envia un /kick a secas
						sendPacket(userSocket, "dq%Introduce the username!#");
					}
					break;
				// /ban <username> <time> <minutes|hours|days>
				case "/ban":
					try {
						if(player().isAdmin()) {
							
							Date actualDate = new Date();
							Calendar dateModifier = Calendar.getInstance();
							dateModifier.setTime(actualDate);
							int amount = Integer.parseInt(splitMsg[2]);
							
							switch(splitMsg[3]) {
								case "minutes":
									dateModifier.add(Calendar.MINUTE, amount);
									break;
								case "hours":
									dateModifier.add(Calendar.HOUR, amount);
									break;
								case "days":
									amount *= 24;
									dateModifier.add(Calendar.HOUR, amount);
									break;
							}
							
							QueryManager.addBan(splitMsg[1], dateModifier.getTime());

							for(Entry<Integer, ChatManager> u : GameManager.chatUsers.entrySet()) {
								if(u.getValue().player.getUserName().equals(splitMsg[1])) {
									sendPacket(u.getValue().getSocket(), "at%#");
									u.getValue().exit();
									sendPacket(userSocket, "dq%You banned " + u.getValue().player.getUserName() + "!#");
								}
							}
						} else {
							sendPacket(userSocket, "dq%Sorry, but you don't have the rights to do this!#");
						}
						
					} catch(Exception e) {
						//Se envia un /kick a secas
						sendPacket(userSocket, "dq%Introduce the username!#");
					}
					break;
				default:
					if(msg.startsWith("/")) {
						sendPacket(userSocket, "dq%Unknown command#");
					} else {
						if(player().isAdmin()) {
							send("j%" + roomID + "@" + player.getUserName() + "@" + msg + "#");
						} else if(!player.hasClan()){
							send("a%" + roomID + "@" + player.getUserName() + "@" + msg + "#");
						} else {
							send("a%" + roomID + "@" + player.getUserName() + "@" + msg + "@" + player.clan().getTagName() + "#");
						}
					}
					break;
			}
		}
	}
}
