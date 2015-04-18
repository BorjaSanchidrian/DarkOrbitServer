package com.darkorbit.objects;

import java.util.ArrayList;
import java.util.List;

public class Equipment {
	private Generators generators;
	private Weapons weapons;
	private List<Extra> extras;
	private List<Drone> drones;
	private int currentShield;
	
	public Equipment(Generators generators, Weapons weapons, List<Extra> extras, List<Drone> drones, int currentShield) {
		this.generators = generators;
		this.weapons = weapons;
		this.extras = extras;
		this.drones = drones;
		this.currentShield = currentShield;
	}

	public List<Extra> getExtras() {
		return extras;
	}

	public void setExtras(List<Extra> extras) {
		this.extras = extras;
	}

	public List<Drone> getDrones() {
		return drones;
	}

	public void setDrones(List<Drone> drones) {
		this.drones = drones;
	}

	public Generators getGenerators() {
		return generators;
	}

	public Weapons getWeapons() {
		return weapons;
	}
	
	public void setGenerators(Generators generators) {
		this.generators = generators;
	}

	public void setWeapons(Weapons weapons) {
		this.weapons = weapons;
	}
	
	public int getCurrentShield() {
		return currentShield;
	}

	public void setCurrentShield(int currentShield) {
		this.currentShield = currentShield;
	}
	
	public int getShield() {
		int shield = 0;
		if(drones.size() > 0) {
			for(Drone d : drones) {
				int droneShield = 0;
				for(Shield s : d.getShields()) {
					droneShield += s.getValue();
				}
				/*
				 * Si ese drone tiene un hercules sus escudos tendran un 15% mas
				 */
				if(d.getDesign().equals("hercules")) {
					droneShield *= 1.15;
				}
				shield += droneShield;
			}
		}
		
		for(Shield s : generators.getShields()) {
			shield += s.getValue();
		}
		
		if(shield <= 0) {
			return 1;
		} else {
			return shield;
		}
	}
	
	public double getAbsorption() {
		int absorption = 0;
		int numShields = 0;
		if(drones.size() > 0) {
			for(Drone d : drones) {
				for(Shield s : d.getShields()) {
					absorption += s.getAbsoptionValue();
				}
				numShields += d.getShields().size();
			}
		}
		
		for(Shield s : generators.getShields()) {
			absorption += s.getAbsoptionValue();
		}
		numShields += generators.getShields().size();
		
		if(numShields > 0) {
			//Porcentaje de absorcion
			return (absorption / numShields);
		} else {
			return 0;
		}
	}
	
	public int getSpeed() {
		int speed = 0;
		for(Engine e : generators.getEngines()) {
			speed += e.getValue();
		}
		
		return speed;
	}
	
	public int getDamage() {
		int damage = 0;
		if(drones.size() > 0) {
			int havoc = 0;
			for(Drone d : drones) {
				for(Laser l : d.getLasers()) {
					damage += l.getValue();
				}
				
				if(d.getDesign().equals("havoc")) { havoc++; }
			}
			
			/*
			 * Si tiene el mismo numero de havoc que de drones aumenta un 10% el daño de los laseres
			 */
			if(havoc == drones.size()) {
				damage *= 1.10;
			}
		}
		
		for(Laser l : weapons.getLasers()) {
			damage += l.getValue();
		}
		
		return damage;
	}
	
	public boolean wipeConfig() {
		List<Shield> shields = new ArrayList<>();
		List<Engine> engines = new ArrayList<>();
		List<Laser> lasers = new ArrayList<>();
		
		generators = new Generators(shields, engines);
		weapons = new Weapons(lasers);
		extras = new ArrayList<>();
		
		for(Drone d : drones) {
			d.wipeDrone();
		}
		
		return true;
	}
	
	public int haveExtra(String lootID) {
		int var = 0;
		/*
		 * Hago esto porque el objeto puede tener "niveles"
		 */
				
		for(Extra e : extras) {
			switch(lootID) {
				case "repairBot":
					//rep-1..rep-4
					if(e.getLootID().split("-")[0].equals("rep")) {
						var = Integer.parseInt(e.getLootID().split("-")[1]);
					}
					break;
					
				default:
					if(e.getLootID().equals(lootID)){
						var = 1;
					}
					break;
			}
		}
		return var;
	}
}
