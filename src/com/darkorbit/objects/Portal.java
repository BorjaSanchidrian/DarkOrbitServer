package com.darkorbit.objects;

import com.darkorbit.utils.Extra;
import com.darkorbit.utils.Vector;

public class Portal {
	private int portalID, requiredLevel, portalGFX;
	//Rango => por si se quiere hacer un portal con mas o menos rango.. Por ahora lo dejo constante
	private int range = 500;
	private short mapID, toMapID;
	private Vector position, destination;
	private boolean isSafe;
	
	public Portal(int portalID, short mapID, Vector position, short toMapID, Vector destination, int requiredLevel, int portalGFX, boolean isSafe) {
		this.portalID = portalID;
		this.mapID = mapID;
		this.position = position;
		this.toMapID = toMapID;
		this.destination = destination;
		this.requiredLevel = requiredLevel;
		this.portalGFX = portalGFX;
		this.isSafe = isSafe;
	}
	
	/* get methods */
		public int getPortalID() { return portalID; }
		
		public short getMapID() { return mapID; }
		
		public Vector getPosition() { return position; }
		
		public short getToMapID() { return toMapID; }
		
		public Vector getDestination() { return destination; }
		
		public int requiredLevel() { return requiredLevel; }
		
		public int portalGFX() { return portalGFX; }
		
		public int getRange() { return range; }
		
		public boolean isSafe() { return isSafe; }
	
	/* @end */
		
		//Pinta el rango del portal
		public void drawRange() {
			Extra.drawRange(mapID, position.getX(), position.getY(), range);
		}
}
