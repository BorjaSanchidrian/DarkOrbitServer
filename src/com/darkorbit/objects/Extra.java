package com.darkorbit.objects;

public class Extra {
	private int id;
	private String lootID;
	
	public Extra(int id, String lootID) {
		this.id = id;
		this.lootID = lootID;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @return the lootID
	 */
	public String getLootID() {
		return lootID;
	}
}
