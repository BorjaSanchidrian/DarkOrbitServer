package com.darkorbit.objects;

import java.net.Socket;
import java.util.Map.Entry;
import java.util.Random;

import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.utils.Vector;

public class GameMap {
    private short mapID;
    private Vector limits;
  
    public GameMap(short mapID, Vector limits, String npcsString) {
        this.mapID = mapID;
        this.limits = limits;
        
        /*
         * npcType|ammount|npcType...
         * 68|50|124|24|12|54
         */
        String[] npcsArray = npcsString.split("\\|");
        
        for(int i=0; i<=(npcsArray.length / 2); i+=2)  {
        	for(int j=0; j<Integer.parseInt(npcsArray[i+1]); j++) {
	        	/*
	             * Para asegurarme que no existe el ID del NPC
	             */
	            Random r = new Random();
	            long npcID = r.nextLong();
	            while(GameManager.gameNpcs.containsKey(npcID) || npcID < 0) {
	            	npcID = r.nextLong();
	            }
	            System.out.println("NPC ID " + npcID);
	            short shipID = Short.parseShort(npcsArray[i]);
	            double posX = Double.parseDouble(r.nextInt((int)limits.getX()) + "00");
	            double posY = Double.parseDouble(r.nextInt((int)limits.getY()) + "00");

	            GameManager.addNpc(new Npc(npcID, shipID, this.mapID, new Vector(posX, posY)));
        	}
        }
        
    }
    
    /* get methods */
    	public short getMapID() { return mapID; }

		public Vector getLimits() {
			return limits;
		}
    /* end */
		
	public void drawNpcs(Socket userSocket) {
		//0|C|USERID|SHIPID|EXPANSION|CLANTAG|USERNAME|X|Y|FactionId|CLANID|RANK|WARNICON|CLANDIPLOMACY|GALAXYGATES|NPC|CLOACK
		for(Entry<Long, Npc> n : GameManager.gameNpcs.entrySet()) {
			if(n.getValue().getMapID() == mapID) {
//				Global.sendPacket(userSocket, "0|C|" + n.getValue().getID() + "|" + n.getValue().getShip().getShipID() + "|3||" + n.getValue().getName() + "|" + n.getValue().position().getX() + "|" + n.getValue().position().getY() + "||||0|0|0|1|0");
				Global.sendPacket(userSocket, "0|C|" + n.getValue().getID() + "|" + n.getValue().getShip().getShipID() + "|3||" + n.getValue().getID() + "|" + n.getValue().position().getX() + "|" + n.getValue().position().getY() + "||||0|0|0|1|0");
				if(!n.getValue().isStarted()) {
					n.getValue().startThread();
				}
			}
		}
	}
}