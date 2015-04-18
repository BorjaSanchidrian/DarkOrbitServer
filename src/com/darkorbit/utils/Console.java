package com.darkorbit.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.darkorbit.main.Launcher;

/**
 * Clase para el manejo de la consola
 */

public class Console {
	
	/**
	 * Devuelve la fecha y hora actual del sistema
	 * @return String Fecha y hora actual
	 */
	private static String getDateTime() {
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("[dd-MM-yyyy >> hh:mm:ss]");
        
        return dateFormat.format(date);
	}
	
	/**
	 * Muestra texto en la consola a modo de log
	 * @param text Texto a mostrar en consola junto con su fecha y hora
	 */
	public static void out(String text) {
		System.out.println(getDateTime() + " " + text);
	}
	
	/**
	 * Muestra texto en la consola a modo de alerta
	 * @param text Texto a mostrar en consola junto con su fecha y hora
	 */
	public static void alert(String text) {
		System.err.println(getDateTime() + " " + text);
	}
	
	/**
	 * Muestra texto en la consola a modo de error (WARNING)
	 * @param text Texto a mostrar en consola junto con su fecha y hora
	 */
	public static void error(String text) {
		System.err.println(getDateTime() + "[WARNING] " + text);
		
		if(!Launcher.developmentMode) {
			System.err.println("For more information enable the debug mode!");
		}
	}
}
