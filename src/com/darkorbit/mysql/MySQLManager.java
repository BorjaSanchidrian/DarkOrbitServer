package com.darkorbit.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.darkorbit.main.Launcher;
import com.darkorbit.utils.Console;

public class MySQLManager
{
	public static Connection connection;
	
	/**
	 * Constructor
	 * 
	 * @param host: Database host
	 * @param username: MySQL username
	 * @param password: MySQL password
	 * @param database: Database name
	 */
	public MySQLManager(String host, String username, String password, String database)
	{
		
		try {
			//Create a new MySQL connection, the DSN for a MySQL connection in java is jdbc:mysql://host/databas
			//We send the connection DSN, the username and the password as parameters
			connection = DriverManager.getConnection("jdbc:mysql://"+host+"/"+database + "?autoReconnect=true&autoReconnectForPools=true",username,password);
			//We set the auto commit to false, not 100% sure why did I putted this shit
			connection.setAutoCommit(false);
			Console.out("Connected to MySQL!");
		} catch (SQLException e) {
			//We couldn't connect to MySQL
			Console.error("Couldn't connect to MySQL!");
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
			System.exit(0);
		}
	}
	
	public MySQLManager()
	{
		//Used by QueryManager.java
	}

	public static synchronized ResultSet query(String query) throws SQLException
	{
		//We create a new statment to execute the query
		Statement statment = connection.createStatement();
		//Execute the query
		ResultSet result = statment.executeQuery(query);
		//Wait a bit (If the query is too long...
		statment.setQueryTimeout(300);
		//And return the result
		return result;
	}
	
	public static void SQLUpdate(String query) {
		String query2 = query;
		try {
			Statement statement = connection.createStatement();
			statement.executeUpdate(query2);
		} catch(SQLException error) {
			Console.error("Error with SQLUpdate..");
			if(Launcher.developmentMode) {
				error.printStackTrace();
			}
		}
	}
}