package com.darkorbit.objects;

import java.util.Calendar;
import java.util.Map.Entry;
import java.util.Random;

import com.darkorbit.net.ConnectionManager;
import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.utils.Vector;

public class Npc implements Runnable {
	private long id;
	private String name;
    private Ship npcShip;
    private short mapID;
    private Vector position;
    private Thread thread;
    private boolean isMoving, isInPlayerRange;
    
    private final double vtRel = 0.84412; //Relacion velocidad juego original
	private Vector destination, oldPosition, direction;
	private double time, distance, timeRemaining;
	private long lastMove;
    
//    private NpcMovement movementSystem;
    
    public Npc(long id, short shipID, short mapID, Vector position) {
    	this.id = id;
        this.npcShip = GameManager.getShip(shipID);
        this.mapID = mapID;
        this.position = position;
        this.name = npcShip.getName();
        this.isMoving = false;
        this.isInPlayerRange = false;
        this.destination = position();
        thread = new Thread(this, "NPC " + id);
    }
    
    /* get methods */
    	public String getName() { return name; }
    	
    	public long getID() { return id; }
    	
    	public short getMapID() { return mapID; }
    	
    	public Ship getShip() { return npcShip; }
    	
    	public Vector position() { return position; }
    	
    	public void setPosition(Vector p) { position = p; }

    	public boolean isMoving() {
			return isMoving;
		}

		public void isMoving(boolean isMoving) {
			this.isMoving = isMoving;
		}
		
		public void isInPlayerRange(boolean a) { isInPlayerRange=a; }
		
		public boolean isInPlayerRange() { return isInPlayerRange; }
    /* end */
    
	public void startThread() {
    	/*
    	 * Pondre que el hilo se inicie en el Draw en GameMap.java para que no cargue todos los npcs del juego, al menos que haya un usuario
    	 * en el mapa
    	 */
    	thread.start();
//    	movementSystem = new NpcMovement(id);
    }
    
    public boolean isStarted() {
    	return thread.isAlive();
    }
    
    //Comprueba el rango respecto a un jugador
	public void checkPlayerRange() {
		for(Entry<Integer, ConnectionManager> u : GameManager.onlinePlayers.entrySet()) {
			if(u.getValue().player().getMapID() == mapID) {
				Player p = u.getValue().player();
				
				double range = 500;
				//Actualiza la posicion del jugador y del target
				try {
					updatePosition();
//					p.movement().position();
				} catch(Exception e) {
					e.printStackTrace();
				}
				
				double finalX = position.getX() - p.getPosition().getX();
				double finalY = position.getY() - p.getPosition().getY();
				
				double distance = Math.sqrt(finalX * finalX + finalY * finalY);
				
				if(distance > range) {
					isInPlayerRange(false);
				} else {
					isInPlayerRange(true);
				}
			}
		}
	}
	
	public void moveShip() {
		Vector limits = GameManager.gameMaps.get(mapID).getLimits();
		Random r = new Random();
		double posX = Double.parseDouble(r.nextInt((int)limits.getX()) + "00");
        double posY = Double.parseDouble(r.nextInt((int)limits.getY()) + "00");
        
		destination = new Vector(posX, posY);
		
		oldPosition = new Vector(position().getX(),  position().getY());
		
		int vel = getShip().getShipSpeed();
				
		direction = new Vector(destination.getX() - oldPosition.getX(), destination.getY() - oldPosition.getY());
		
		distance = oldPosition.distanceTo(destination);
		
		time = (distance / (vel * vtRel)) * 1000;
		
		if((oldPosition.getX() != destination.getX()) || (oldPosition.getY() != destination.getY())) {
			isMoving(true);
		} else {
			isMoving(false);
		}
		
		lastMove = Calendar.getInstance().getTimeInMillis();
		
		
		
		String movePacket = "0|1|" + getID() + "|" + destination.getX() + "|" + destination.getY() + "|" + time;
		Global.sendToMap(mapID, movePacket);
	}
    
	public void stopShip() {
		updatePosition();
		String movePacket = "0|1|" + getID() + "|" + position().getX() + "|" + position().getY() + "|1000";
		Global.sendToMap(getMapID(), movePacket);
	}
	
	/**
	 * Devuelve la posicion del usuario
	 * @return
	 */
	public Vector updatePosition() {
		long timeElapsed = Calendar.getInstance().getTimeInMillis() - lastMove;
		
		if(isMoving()) {
			if(timeElapsed < time) {
				//Usuario se esta moviendo, devuelve position
				isMoving(true);
				
				timeRemaining = time - timeElapsed;
				
				Vector flyPosition = new Vector(oldPosition.getX() + (direction.getX() * (timeElapsed / time)), oldPosition.getY() + (direction.getY() * (timeElapsed / time)));
				setPosition(flyPosition);
				
				return flyPosition;
			} else {
				//ya ha llegado...
				isMoving(false);
				setPosition(new Vector(destination.getX(), destination.getY()));
				
				return position();
			}
		} else {
			setPosition(new Vector(destination.getX(), destination.getY()));
			return position();
		}
	}
	
    public void run() {
    	while(true) {
    		//TODO: Cambiar por while(npc en rango de vision) else wait(); para cargar menos el server
    		
    		if(!isInPlayerRange()) {
    			if(timeRemaining <= 0) {
    				moveShip();
    			}
    		} else {
    			stopShip();
    			timeRemaining = 0;
    		}
    		updatePosition();
    		checkPlayerRange();
    		try {
				Thread.sleep(350);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
    	}
    }
}