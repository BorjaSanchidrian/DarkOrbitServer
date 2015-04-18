package com.darkorbit.objects;

public class Shield {
	private int id;
	private String lootID;
	
	public Shield(int id, String lootID) {
		this.id = id;
		this.lootID = lootID;
	}
	
	public String getLootID() {
		return lootID;
	}

	public void setLootID(String lootID) {
		this.lootID = lootID;
	}

	public int getValue() {
		/**
		 * Numero de cada tipo de escudo
		 * 
		 * B02 => 10.000
		 * B01 => 4.000
		 * A03 => 5.000
		 * A02 => 2.000
		 * A01 => 1.000
		 */
		int value = 0;
		switch(lootID) {
			case "sg3n-b02":
				value = 10000;
				break;
			case "sg3n-b01":
				value = 4000;
				break;
			case "sg3n-a03":
				value = 5000;
				break;
			case "sg3n-a02":
				value = 2000;
				break;
			case "sg3n-a01":
				value = 1000;
				break;
			default:
				value = 0;
		}
		
		return value;
	}
	
	public int getAbsoptionValue() {
		/**
		 * Numero de cada tipo de escudo
		 * 
		 * B02 =>  80%
		 * B01 =>  70%
		 * A03 =>  60%
		 * A02 =>  50%
		 * A01 =>  40%
		 */
		int value = 0;
		switch(lootID) {
			case "sg3n-b02":
				value = 80;
				break;
			case "sg3n-b01":
				value = 70;
				break;
			case "sg3n-a03":
				value = 60;
				break;
			case "sg3n-a02":
				value = 50;
				break;
			case "sg3n-a01":
				value = 40;
				break;
			default:
				value = 0;
		}
		
		return value;
	}
	
	public int getID() { 
		return id;
	}
}
