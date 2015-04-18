package com.darkorbit.objects;

import java.util.ArrayList;
import java.util.List;

public class Drone {
	private int id, level, dronePacket;
	private String type, design;
	private List<Shield> shields;
	private List<Laser> lasers;

	public Drone(int id, int level, String type, List<Shield> shields, List<Laser> lasers, String design) {
		this.id = id;
		this.level = level;
		this.type = type;
		this.shields = shields;
		this.lasers = lasers;
		this.design = design;
	}

	public int getId() {
		return id;
	}

	public int getLevel() {
		return level;
	}

	public String getType() {
		return type;
	}

	public List<Shield> getShields() {
		return shields;
	}

	public List<Laser> getLasers() {
		return lasers;
	}
	
	public int getDronePacket() {
		/*
		 * 10 -> flax (hercules)
		 * 20 -> iris
		 * 30 -> iris (hercules)
		 * 40 -> iris (havok)
		 * 50 -> zeus
		 * 70 -> apis
		 */
		switch(type) {
			case "iris":
				//20 es el codigo del iris
				if(design.equals("havoc")) {
					dronePacket = 41 + level;
				} else if(design.equals("hercules")) {
					dronePacket = 31 + level;
				} else {
					dronePacket = 21 + level;
				}
				break;
				
			case "zeus":
				//50 es el codigo del iris
				if(design.equals("havoc")) {
					dronePacket = 41 + level;
				} else if(design.equals("hercules")) {
					dronePacket = 31 + level;
				} else {
					dronePacket = 51 + level;
				}
				break;
				
			case "apis":
				//70 es el codigo del iris
				if(design.equals("havoc")) {
					dronePacket = 41 + level;
				} else if(design.equals("hercules")) {
					dronePacket = 31 + level;
				} else {
					dronePacket = 71 + level;
				}
				break;
				
			case "flax":
				//TODO: Flax hercules, no se el paquete del normal :/
				dronePacket = 11 + level;
				break;
		}
		
		return dronePacket;
	}
	
	public String getDesign() {
		return design;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setShields(List<Shield> shields) {
		this.shields = shields;
	}

	public void setLasers(List<Laser> lasers) {
		this.lasers = lasers;
	}
	
	public void wipeDrone() {
		shields = new ArrayList<>();
		lasers = new ArrayList<>();
		design = "";
	}
}
