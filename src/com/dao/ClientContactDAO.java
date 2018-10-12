package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import com.model.Client;

import java.util.ArrayList;
import java.util.List;


public class ClientContactDAO {
	
	DataSource dataSource=null;

	public ClientContactDAO(DataSource dataSource) {
		this.dataSource=dataSource;
	}

	public void clientInfo(String name,String companyName, String mobile, String phone, String location, String email, String message) throws SQLException{
		List<Client> clientInfoList=new ArrayList<Client>();
		
		Context ctx = null;
		Connection con = null;
		PreparedStatement stmt = null;
		
		
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
			
			con=ds.getConnection();
			stmt=con.prepareStatement("insert into client_contact_info values (default,?,?,?,?,?,?,?)");
			
			stmt.setString(1, name);
			stmt.setString(2, companyName);
			stmt.setString(3, mobile);
			stmt.setString(4, phone);
			stmt.setString(5, email);
			stmt.setString(6, location);
			stmt.setString(7, message);
			
			stmt.executeUpdate();
			System.out.println("In client DAO");
					
		} catch (NamingException e ) {
			// TODO: handle exception
			e.printStackTrace();
			
		}finally{
			try {
				
				stmt.close();
				con.close();
				ctx.close();
			} catch (SQLException e) {
				System.out.println("Exception in closing DB resources");
			} catch (NamingException e) {
				System.out.println("Exception in closing Context");
		  }
     	}
		
	}
}
