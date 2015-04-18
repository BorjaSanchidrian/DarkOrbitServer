package com.darkorbit.objects;

public class DroneDesign {
	private int objectID;
	private String lootID;
	
	public DroneDesign(int objectID, String lootID) {
		super();
		this.objectID = objectID;
		this.lootID = lootID;
	}

	/**
	 * @return the objectID
	 */
	public int getObjectID() {
		return objectID;
	}

	/**
	 * @return the lootID
	 */
	public String getLootID() {
		return lootID;
	}

	/**
	 * @param objectID the objectID to set
	 */
	public void setObjectID(int objectID) {
		this.objectID = objectID;
	}

	/**
	 * @param lootID the lootID to set
	 */
	public void setLootID(String lootID) {
		this.lootID = lootID;
	}
}
