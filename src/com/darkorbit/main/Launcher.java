package com.darkorbit.main;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Map.Entry;
import java.util.Scanner;
import java.util.Timer;
import java.util.TimerTask;

import com.darkorbit.chat.ChatServer;
import com.darkorbit.mysql.MySQLManager;
import com.darkorbit.net.ConnectionManager;
import com.darkorbit.net.GameManager;
import com.darkorbit.net.GameServer;
import com.darkorbit.net.Global;
import com.darkorbit.utils.Console;

public class Launcher extends Global {

	private static final int PORT = 8080;
	private static final int CHAT_PORT = 9338;
	public static final String clientVersion = "4.1";
	/***********************************************/
	
	private static String mysqlHost 	= null;
	private static String mysqlUserName = null;
	private static String mysqlPassword = null;
	private static String mysqlDatabase = null;
	
	private static Timer autoSaveTimer = new Timer("AutoSave Timer");
	
	public static boolean developmentMode = true;
	public static boolean autoSave = true;
	
	private static final String version = "Development version v0.3.3";
	private static Scanner in = new Scanner(System.in);
	private static BufferedReader configReader = null;
	
	/**
	 * Main method. Reads the config file and set-up the server
	 * @param args
	 * @throws IOException - Because of the server initialization
	 */
	public static void main(String[] args) throws IOException {
		System.out.println("DarkOrbit Game Server (C) 2015 - " + version);
		System.out.println("Starting up everything...\n");
		if(developmentMode) {
			Console.error("Disable by default development mode in official releases!");
		}
		if(autoSave) {
			Console.alert("AutoSave activated!");
		} else {
			Console.error("AutoSave desactivated!");
		}
		readConfigFile();
		
		Console.out("Connecting to MySQL...");
		new MySQLManager(mysqlHost, mysqlUserName, mysqlPassword, mysqlDatabase);
		new GameServer(PORT);
		new ChatServer(CHAT_PORT);
		
		//Inicia el timer del autoSave
		autoSave();
		waitForCommands();
	}
	
	/**
	 * Lee el archivo de configuraci�n
	 */
	private static void readConfigFile() {
		Console.out("Reading config file...");
		try {
			configReader = new BufferedReader(new FileReader("config/config.ini"));
			String line;
			while((line=configReader.readLine()) != null) {
				//Si la linea comienza con #, [, lo que sea pasa a la siguiente
				
				if(line.startsWith("[") || line.startsWith("#") || !line.contains("=")) continue;

				String[] values = line.split("=");
				switch(values[0]) {
					case "mysqlHost":
						mysqlHost = values[1];
						break;
						
					case "mysqlUserName":
						mysqlUserName = values[1];
						break;
						
					case "mysqlPassword":
						mysqlPassword = values[1];
						break;
						
					case "mysqlDatabase":
						mysqlDatabase = values[1];
						break;
				}
			}
		} catch(FileNotFoundException e) {
			// Archivo no encontrado :/
			
		} catch (IOException e) {
			Console.error("Couldn't read config file... Should be located in 'config/config.ini");
			
			if(developmentMode) {
				e.printStackTrace();
			}
		}
	}
	
	private static void autoSave() {
		//Cada 30 segundos si el autoSave esta activado guarda los datos y hay jugadores online
		autoSaveTimer.schedule(new TimerTask() {
			public void run() {
				if(autoSave && !GameManager.onlinePlayers.isEmpty()) {
					for(Entry<Integer, ConnectionManager> player : GameManager.onlinePlayers.entrySet()) {
						player.getValue().saveData();
					}
					Console.alert("AutoSave Complete!");
				}
			}
		}, 0, 30000);
	}
	
	/**
	 * Espera a la entrada de texto (comandos)
	 */
	private static void waitForCommands() {
		//Quiero que siempre este escuchando..
		while(true) {
			//String command = in.nextLine();
			String[] ccommand = in.nextLine().split(" ");
			
			switch(ccommand[0]) {
				case "help":
					Console.out("List of available commands:\n");
					System.out.println("- help => shows this awesome list");
					//System.out.println("- devmode => enable/disable development mode. Which includes information about packets and detailed error messages");
					System.out.println("- close <seconds> => shutdown the server in the choosen time");
					System.out.println("- globalmsg <msg> => sends a message to all the game");
					System.out.println("- autosave => enable/disable autosave");
					break;
					
				case "devmode":
					if(!developmentMode) {
						developmentMode = true;
						Console.alert("DevelopmentMode Activated");
					} else {
						developmentMode = false;
						Console.alert("DevelopmentMode Desactivated.");
					}
					break;
					
				case "close":
					try {
						int seconds = Integer.parseInt(ccommand[1]);
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
						Console.alert("You should introduce the ammount of time (in seconds)");
						if(developmentMode) {
							e.printStackTrace();
						}
					}
					break;
					
				case "globalmsg":
					 try {
						String msg = "";
						for(int i=1; i<ccommand.length; i++) {
							msg += ccommand[i] + " ";
						}
						msg += "\nGlobal message from: Server";
						sendToAll("0|A|STD|" + msg);
					 } catch(Exception e) {
							Console.alert("You should introduce the message");
							if(developmentMode) {
								e.printStackTrace();
							}
						}
					break;
				
				case "autosave":
					autoSave = !autoSave;
					if(autoSave) {
						Console.alert("Auto-Save activated!");
					} else {
						Console.alert("Auto-Save desactivated!");
					}
					break;
					
				default:
					Console.out("Unknown command :/");
					break;
			}
		}
	}
}
