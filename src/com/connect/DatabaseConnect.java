package com.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;



public class DatabaseConnect {
	
	 String url = "jdbc:mysql://localhost:3306/sumi_production";
	 String name = "root";
	 String password = "";

	
	public Connection getConnection() {
	  
	   Connection con;
	try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, name, password);
			return con;
			
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
		 
	}
	
	 
		 	 

	}

	
}
