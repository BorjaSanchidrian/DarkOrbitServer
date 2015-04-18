package com.darkorbit.objects;

import java.util.Map;
import java.util.TreeMap;

public class GameMap {
    private short mapID;
    private Map<Integer, Short> npcs = new TreeMap<Integer, Short>();
  
    public GameMap(short mapID, String npcsString) {
        this.mapID = mapID;
        
        /*
         * npcType|ammount|npcType...
         * 68|50|124|24|12|54
         */
        String[] npcsArray = npcsString.split("\\|");
        
        for(int i=0; i<npcsArray.length; i+=2)  {
            npcs.put(Integer.parseInt(npcsArray[i+1]), Short.parseShort(npcsArray[i]));
        }
        
    }
    
    /* get methods */
    	public short getMapID() { return mapID; }
    	
}