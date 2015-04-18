package com.darkorbit.objects;

public class Ammunition {
	private int lcb10 = 0, mcb25 = 0, mcb50 = 0, sab50 = 0, ucb100 = 0, rsb75 = 0;
	
	public Ammunition(int lcb10, int mcb25, int mcb50, int sab50, int ucb100, int rsb75) {
		this.lcb10 = lcb10;
		this.mcb25 = mcb25;
		this.mcb50 = mcb50;
		this.sab50 = sab50;
		this.ucb100 = ucb100;
		this.rsb75 = rsb75;
	}
	
	/* get methods */
	
		public int getLcb10() {
			return lcb10; 
		}
		
		public int getMcb25() {
			return mcb25; 
		}
		
		public int getMcb50() {
			return mcb50; 
		}
		
		public int getSab50() {
			return sab50; 
		}
		
		public int getUcb100() {
			return ucb100;
		}
		
		public int getRsb75() {
			return rsb75;
		}
	/* @end */
		
	/* set methods */
		
		public void setLcb10(int a) {
			lcb10 = a;
		}
		
		public void setMcb25(int a) {
			mcb25 = a; 
		}
		
		public void setMcb50(int a) {
			mcb50 = a; 
		}
		
		public void setSab50(int a) {
			sab50 = a; 
		}
		
		public void setUcb100(int a) {
			ucb100 = a; 
		}
		
		public void setRsb75(int a) {
			rsb75 = a; 
		}
}
