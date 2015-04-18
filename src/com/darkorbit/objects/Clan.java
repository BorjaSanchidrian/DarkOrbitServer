package com.darkorbit.objects;

public class Clan {
	private int clanID;
	private String tagName;
	
	public Clan(int clanID, String tagName) {
		this.clanID = clanID;
		this.tagName = tagName;
	}
	
	/* get methods */
		public int getClanID() { return clanID; }
		
		public String getTagName() { return tagName; }
		
	/* @end */
}
