package com.darkorbit.movement;

import java.util.Calendar;
import java.util.Random;

import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.objects.Npc;
import com.darkorbit.utils.Vector;

/**
 * @date 19/4/2015
 * @package com.darkorbit.movement
 * @author Yuuki
 * @project DarkOrbitProject
 */
public class NpcMovement extends Global {
	private final double vtRel = 0.84412; //Relacion velocidad juego original
	private Vector destination, oldPosition, direction;
	private double time, distance, timeRemaining;
	private long lastMove;
	private int vel;
	private Npc npc;
	
	public NpcMovement(long npcID) {
		this.npc = GameManager.getNpc(npcID);
	}

	public void moveShip() {
		Vector limits = GameManager.gameMaps.get(npc.getMapID()).getLimits();
		Random r = new Random();
		double posX = Double.parseDouble(r.nextInt((int)limits.getX()) + "00");
        double posY = Double.parseDouble(r.nextInt((int)limits.getY()) + "00");
        
		destination = new Vector(posX, posY);
		
		oldPosition = new Vector(npc.position().getX(),  npc.position().getY());
		
		vel = npc.getShip().getShipSpeed();
				
		direction = new Vector(destination.getX() - oldPosition.getX(), destination.getY() - oldPosition.getY());
		
		distance = oldPosition.distanceTo(destination);
		
		time = (distance / (vel * vtRel)) * 1000;
		
		if((oldPosition.getX() != destination.getX()) || (oldPosition.getY() != destination.getY())) {
			npc.isMoving(true);
		} else {
			npc.isMoving(false);
		}
		
		lastMove = Calendar.getInstance().getTimeInMillis();
		
		
		
		String movePacket = "0|1|" + npc.getID() + "|" + destination.getX() + "|" + destination.getY() + "|" + time;
		sendToMap(npc.getMapID(), movePacket);
	}
	
	public void stopShip() {
		updatePosition();
		String movePacket = "0|1|" + npc.getID() + "|" + npc.position().getX() + "|" + npc.position().getY() + "|0";
		sendToMap(npc.getMapID(), movePacket);
	}
	
	/**
	 * Devuelve la posicion del usuario
	 * @return
	 */
	public Vector updatePosition() {
		long timeElapsed = Calendar.getInstance().getTimeInMillis() - lastMove;
		
		if(npc.isMoving()) {
			if(timeElapsed < time) {
				//Usuario se esta moviendo, devuelve position
				npc.isMoving(true);
				
				timeRemaining = time - timeElapsed;
				
				Vector flyPosition = new Vector(oldPosition.getX() + (direction.getX() * (timeElapsed / time)), oldPosition.getY() + (direction.getY() * (timeElapsed / time)));
				npc.setPosition(flyPosition);
				
				return flyPosition;
			} else {
				//ya ha llegado...
				npc.isMoving(false);
				npc.setPosition(new Vector(destination.getX(), destination.getY()));
				
				return npc.position();
			}
		} else {
			npc.setPosition(new Vector(destination.getX(), destination.getY()));
			return npc.position();
		}
	}
	
	public double timeRemaining() {
		return timeRemaining;
	}
	
	public Vector destination() {
		return destination;
	}
}
