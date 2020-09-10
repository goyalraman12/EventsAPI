package com.raman.events;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private static Connection con = null; 
	  
    static
    { 
    	String url = "jdbc:mysql://localhost:3306/events";
		String uname = "root";
		String pass = "Raman@7891"; 
        try { 
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection(url, uname, pass); 
        } 
        catch (ClassNotFoundException | SQLException e) { 
            e.printStackTrace(); 
        } 
    } 
    public static Connection getConnection() 
    { 
        return con; 
    }

}
