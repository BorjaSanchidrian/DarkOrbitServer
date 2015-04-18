package com.darkorbit.systems;

import java.util.Calendar;

import com.darkorbit.net.GameManager;
import com.darkorbit.net.Global;
import com.darkorbit.objects.Player;
import com.darkorbit.utils.Vector;

public class MovementSystem extends Global implements Runnable {
	private final double vtRel = 0.84412; //Relacion velocidad juego original
	
	private Vector destination, oldPosition, direction;
	private double time, distance, timeRemaining;
	private long lastMove;
	private int vel;
	private Player player;
	private Thread thread;
	
	public MovementSystem(int playerID) {
		this.player = GameManager.getConnectionManager(playerID).player();
		
		/*
		 * Inicializo el destino como la posicion del jugador al conectarse para que no sea nulo en loginAssembly.checkPlayerPosition()
		 * De serlo la funcion position se carga el server porque si el usuario se conecta pero no se mueve su "destino" es nulo, por lo que no 
		 * se puede comprobar su posicion, tendria que al menos moverme 1mm o bien inicializarlo de esta forma :D
		 */
		this.destination = player.getPosition();
		this.thread = new Thread(this, "MovementSystem Thread player" + player.getPlayerID());
		thread.start();
	}
	
	/*
	 * Comprueba si el jugador se esta moviendo para 'despertar' al hilo
	 */
	private synchronized void playerMoving() {
		long timeElapsed = Calendar.getInstance().getTimeInMillis() - lastMove;
		
		if(player.isMoving()) {
			if(timeElapsed < time) {
				//Usuario se esta moviendo
				player.isMoving(true);
			} else {
				//ya ha llegado...
				player.isMoving(false);
			}
		} else {
			player.isMoving(false);
		}
		
        if(player.isMoving())
            notify();
    }
	
	public void run() {
		/*
		 * Usado para poder hacer thread.stop(); de forma segura
		 */
		Thread currentThread = Thread.currentThread();
		
		while(currentThread == thread) {
	        try {
				Thread.sleep(350);
				
				//'suspendo' el hilo mientras el jugador no se mueva
	            synchronized(this) {
	                while (!player.isMoving())
	                    wait();
	            }
	        } catch (InterruptedException e){
	        }
	        
	        //TODO
	        playerMoving();
		}
	}
	
	public synchronized void close() {
		//Pongo que se esta moviendo para que al cerrarlo no se vuelva a suspender xD
		player.isMoving(true);
		notifyAll();
		thread = null;
	}
	
	/**
	 * Mueve la nave del jugador
	 * @param p Paquete de movimiento
	 */
	public void moveShip(String[] p) {
		//	1|destX|destY|currX|currY
		destination = new Vector(Integer.parseInt(p[1]), Integer.parseInt(p[2]));
		
		oldPosition = new Vector(Integer.parseInt(p[3]), Integer.parseInt(p[4]));
		
		/*
		 * TODO: Pongo un modificador a la velocidad porque no hay forma de actualizar los motores aun y se va muy despacio
		 * vel = player.getShip().getShipSpeed() + player.activeConfig().getSpeed();*/
		
		vel = (int) ((player.getShip().getShipSpeed() + player.activeConfig().getSpeed()) * 1.2);
				
		direction = new Vector(destination.getX() - oldPosition.getX(), destination.getY() - oldPosition.getY());
		
		distance = oldPosition.distanceTo(destination);
		
		time = (distance / (vel * vtRel)) * 1000;
		
		if((oldPosition.getX() != destination.getX()) || (oldPosition.getY() != destination.getY())) {
			player.isMoving(true);
		} else {
			player.isMoving(false);
		}
		
		lastMove = Calendar.getInstance().getTimeInMillis();
		
		
		
		String movePacket = "0|1|" + player.getPlayerID() + "|" + destination.getX() + "|" + destination.getY() + "|" + time;
		sendToMap(player.getMapID(), movePacket);
		playerMoving();
	}
	
	/**
	 * Devuelve la posicion del usuario
	 * @return
	 */
	public Vector position() {
		long timeElapsed = Calendar.getInstance().getTimeInMillis() - lastMove;
		
		if(player.isMoving()) {
			if(timeElapsed < time) {
				//Usuario se esta moviendo, devuelve position
				player.isMoving(true);
				
				timeRemaining = time - timeElapsed;
				
				Vector flyPosition = new Vector(oldPosition.getX() + (direction.getX() * (timeElapsed / time)), oldPosition.getY() + (direction.getY() * (timeElapsed / time)));
				player.setPosition(flyPosition);
				
				return flyPosition;
			} else {
				//ya ha llegado...
				player.isMoving(false);
				player.setPosition(new Vector(destination.getX(), destination.getY()));
				
				return player.getPosition();
			}
		} else {
			player.setPosition(new Vector(destination.getX(), destination.getY()));
			return player.getPosition();
		}
	}
	
	public double timeRemaining() {
		return timeRemaining;
	}
	
	public Vector destination() {
		return destination;
	}
}
