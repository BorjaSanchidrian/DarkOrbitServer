package com.darkorbit.objects;

public class Laser {
	private int id;
	private String lootID;
	
	public Laser(int id, String lootID) {
		this.id = id;
		this.lootID = lootID;
	}
	
	public int getId() {
		return id;
	}

	public String getLootID() {
		return lootID;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLootID(String lootID) {
		this.lootID = lootID;
	}
	
	public int getValue() {
		/**
		 * Daño de los laseres
		 * 
		 * LF3 => 150
		 * LF2 => 100
		 * MP1 => 60
		 * LF1 => 40
		 */
		int value = 0;
		switch(lootID) {
			case "lf-4":
				value = 200;
				break;
			case "lf-3":
				value = 150;
				break;
			case "lf-2":
				value = 100;
				break;
			case "mp-1":
				value = 60;
				break;
			case "lf-1":
				value = 40;
				break;
			default:
				value = 0;
		}
		
		return value;
	}
}
