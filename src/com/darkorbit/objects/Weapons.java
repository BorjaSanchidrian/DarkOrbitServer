package com.darkorbit.objects;

import java.util.List;

public class Weapons extends Object {
	private List<Laser> lasers;

	public Weapons(List<Laser> lasers) {
		this.lasers = lasers;
	}

	public List<Laser> getLasers() {
		return lasers;
	}

	public void setLasers(List<Laser> lasers) {
		this.lasers = lasers;
	}
}
