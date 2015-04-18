package com.darkorbit.net;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Map.Entry;

import com.darkorbit.main.Launcher;
import com.darkorbit.objects.Player;
import com.darkorbit.utils.Console;

public class Global {
	public Global() {}
	
	private static PrintWriter out;
	
	/**
	 * Metodo para enviar paquetes al socket
	 * @param socket - Socket al que enviar los paquetes
	 * @param packet - Paquete a enviar
	 */
	public static void sendPacket(Socket socket, String packet) {
		try {
			out = new PrintWriter(socket.getOutputStream(), false);
			out.print(packet + (char)0x00);
			out.flush();
			
			//How to no spam
			if(Launcher.developmentMode && !packet.contains("0|D")) {
				Console.out("Packet sent: " + packet);
			}
			
		} catch (IOException e) {
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
	}
	
	public static void sendToMap(short mapID, String packet) {
		for(Entry<Integer, ConnectionManager> u : GameManager.onlinePlayers.entrySet()) {
			if(u.getValue().player().getMapID() == mapID) {
				sendPacket(u.getValue().getSocket(), packet);
			}
		}
	}
	
	public static void sendToOthers(Player p, String packet) {
		for(Entry<Integer, ConnectionManager> u : GameManager.onlinePlayers.entrySet()) {
			if((u.getValue().player().getMapID() == p.getMapID()) && (u.getValue().player().getPlayerID() != p.getPlayerID())) {
				sendPacket(u.getValue().getSocket(), packet);
			}
		}
	}
	
	public static void sendToAll(String packet) {
		for(Entry<Integer, ConnectionManager> u : GameManager.onlinePlayers.entrySet()) {
			sendPacket(u.getValue().getSocket(), packet);
		}
	}
	
	/**
	 * Envia el policy necesario de flash - Buscar en google para mas info xD
	 * @param socket
	 */
	public static void sendPolicy(Socket socket) {
		String policy = "<?xml version=\"1.0\"?>\r\n" +
                "<!DOCTYPE cross-domain-policy SYSTEM \"/xml/dtds/cross-domain-policy.dtd\">\r\n" +
                "<cross-domain-policy>\r\n" +
                "<allow-access-from domain=\"*\" to-ports=\"*\" />\r\n" +
                "</cross-domain-policy>";
		sendPacket(socket, policy);
	}
}
