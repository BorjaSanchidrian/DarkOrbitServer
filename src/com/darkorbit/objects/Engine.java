package com.darkorbit.objects;

public class Engine {
	private int id;
	private String lootID;
	
	public Engine(int id, String lootID) {
		this.id = id;
		this.lootID = lootID;
	}
	
	public int getID() {
		return id;
	}
	
	public String getLootID() {
		return lootID;
	}

	public void setLootID(String lootID) {
		this.lootID = lootID;
	}
	
	public int getValue() {
		int value = 0;
		switch(lootID) {
			case "g3n-7900":
				value = 10;
				break;
			case "g3n-6900":
				value = 7;
				break;
			case "g3n-3310":
				value = 5;
				break;
			case "g3n-3210":
				value = 4;
				break;
			case "g3n-2010":
				value = 3;
				break;
			case "g3n-1010":
				value = 2;
				break;
			default:
				value = 0;
		}
		
		return value;
	}
}
