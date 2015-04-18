package com.darkorbit.chat;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

import com.darkorbit.main.Launcher;
import com.darkorbit.utils.Console;

/**
 * Crea un hilo con un ServerSocket y manda las conexiones al ConnectionHandler
 */

public class ChatServer implements Runnable {
	private ServerSocket server;
	private Thread serverThread;
	
	public ChatServer(int port) {
		try {
			server = new ServerSocket(port);
			serverThread = new Thread(this);
			serverThread.setName("ChatServer-Thread");
			serverThread.start();
		} catch (IOException e) {
			Console.error("Error starting the ServerSocker... Probably the port " + port + " is in use..");
			
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
	}
	
	public void run() {
		while(true) {
			try {
				Socket incomingConnection = server.accept();
				if(incomingConnection.isConnected()) {
					//user connected!
					new ChatManager(incomingConnection);
				}
			} catch (IOException e) {
				//error in the connection
				Console.error("There was an error handling the connection...");
				
				if(Launcher.developmentMode) {
					e.printStackTrace();
				}
			}
		}
	}
}
