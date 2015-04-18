package com.darkorbit.objects;

import java.util.List;

public class Generators extends Object {
	private List<Shield> shields;
	private List<Engine> engines;
	
	public Generators(List<Shield> shields, List<Engine> engines) {
		this.engines = engines;
		this.shields = shields;
	}

	public List<Shield> getShields() {
		return shields;
	}

	public List<Engine> getEngines() {
		return engines;
	}

	public void setShields(List<Shield> shields) {
		this.shields = shields;
	}

	public void setEngines(List<Engine> engines) {
		this.engines = engines;
	}
	
}
