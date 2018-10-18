package com.dao;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.util.ArrayList;
import java.util.List;
import com.model.JobApplicant;
import java.io.Serializable;

// SAVES TO DATABASE  WHEN APPLICANT APPLIES TO A JOB
public class JobApplicantDAO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7559180223901376732L;
	
	DataSource dataSource=null;
	
	public JobApplicantDAO(DataSource dataSource)
	{
		this.dataSource=dataSource;
	}
	
	public void jobApplicantDataSubmit(String name, String email, String jobTitle, String location, String contact,
			String alternateContact, String fileName, String contentType, InputStream content) throws SQLException
	{
		List<JobApplicant> jobApplicantList=new ArrayList<>();
		Context ctx=null;
		Connection con=null;
		PreparedStatement stmt=null;
		
		
		try {
			ctx=new InitialContext();
			DataSource ds=(DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
			con=ds.getConnection();
			stmt=con.prepareStatement("insert into job_applicant_info values (default,?,?,?,?,?,?,?,?,?)");
			
			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, jobTitle);
			stmt.setString(4, location);
			stmt.setString(5, contact);
			stmt.setString(6, alternateContact);
			stmt.setString(7, fileName);
			stmt.setString(8, contentType);
			stmt.setBinaryStream(9, content);
			
			stmt.executeUpdate();
			
			
			
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
