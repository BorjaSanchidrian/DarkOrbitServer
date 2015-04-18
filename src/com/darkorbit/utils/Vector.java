package com.darkorbit.utils;

public class Vector {
	private double _x;
	private double _y;
	
	public Vector() {
		
	}
	
	public double getX() {
		return _x;
	}
	
	public double getY() {
		return _y;
	}
	
	public void setX(double x) {
		this._x = x;
	}
	
	public void setY(double y) {
		this._y = y;
	}
	
	
	public Vector(double x, double y) {
		this._x = x;
		this._y = y;
	}
	
	public Vector reset() {
		return new Vector(0, 0);
	}
	
	public double distanceTo(Vector Point) {
		double dx = this._x - Point._x;
		double dy = this._y - Point._y;
		return Math.sqrt((dx * dx) + (dy * dy));
	}
	
	@Override public String toString() {
		return this._x + "," + this._y;
	}
	
	@Override public boolean equals(java.lang.Object obj) {
		if (obj instanceof Vector) {
			Vector v2d = (Vector)obj;
			return v2d._x == this._x && v2d._y == this._y;
		}
		return false;
	}
	
	@Override public int hashCode() {
		return (this._x + " " + this._y).hashCode();
	}
	
	public static Vector plus(Vector One, Vector Two) {
		return new Vector(One._x + Two._x, One._y + Two._y);
	}

	public static Vector minus (Vector One, Vector Two) {
		return new Vector(One._x - Two._x, One._y - Two._y);
	}
}