package com.darkorbit.objects;

import com.darkorbit.net.GameManager;

public class Npc {
    @SuppressWarnings("unused")
	private String name;
    private Ship npcShip;
    
    public Npc(short id) {
        this.npcShip = GameManager.getShip(id);
    }
    
    /* get methods */
    	public Ship getShip() { return npcShip; }
    	
    	public String toString() {
    		return "test";
    	}
}