package com.darkorbit.utils;

import java.util.Random;

import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;

public class Extra extends Global {
	
	//Pinta un circulo con phoenix xD
	public static void drawRange(short mapId, double positionX, double positionY, double range) {
		double x = Math.sin(Math.toRadians(45)) * range;
		Random r = new Random();
		int i = r.nextInt(Integer.MAX_VALUE);
		String packet = "0|C|" + (i++) + "|1|0|0|KKX: " + (positionX + x) + " Y: " + (positionY + x) + "|" + (positionX + x) + "|" + (positionY + x)  + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX + range) + " Y: " + (positionY) + "|" + (positionX + range) + "|" + (positionY) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX) + " Y: " + (positionY + range) + "|" + (positionX) + "|" + (positionY + range) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX - x) + " Y: " + (positionY - x) + "|" + (positionX - x) + "|" + (positionY - x) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX - x) + " Y: " + (positionY + x) + "|" + (positionX - x) + "|" + (positionY + x) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX + x) + " Y: " + (positionY - x) + "|" + (positionX + x) + "|" + (positionY - x) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX - range) + " Y: " + (positionY) + "|" + (positionX - range) + "|" + (positionY) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
		
		packet = "0|C|" + (i++) + "|1|0|0|X: " + (positionX) + " Y: " + (positionY - range) + "|" + (positionX) + "|" + (positionY - range) + "||0||||0|0|0";
		sendToMap(mapId, packet); GameManager.addRangeShip(i);
	}
	
}
