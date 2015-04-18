package com.darkorbit.objects;

public class Rockets {
	private int r310 = 0, plt2026 = 0, plt3030 = 0, plt2021 = 0;
	
	public Rockets(int r310, int plt2026, int plt3030, int plt2021) {
		this.r310 = r310;
		this.plt2026 = plt2026;
		this.plt3030 = plt3030;
		this.plt2021 = plt2021;
	}
	
	/* get methods */
		public int getR310() {
			return r310;
		}
		
		public int getPlt2026() {
			return plt2026;
		}
		
		public int getPlt3030() {
			return plt3030;
		}
		
		public int getPlt2021() {
			return plt2021; 
		}
	/* @end */
		
	/* set methods */
		public void setR310(int a) {
			r310 = a;
		}
		
		public void setPlt2026(int a) {
			plt2026 = a;
		}
		
		public void setPlt3030(int a) {
			plt3030 = a;
		}
		
		public void setPlt2021(int a) {
			plt2021 = a;
		}
}
