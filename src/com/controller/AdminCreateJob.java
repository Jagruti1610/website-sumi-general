package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


public class AdminCreateJob extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
		System.out.println("In admin create job");
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		
		String title= request.getParameter("jobTitleTextbox");  
		String loc=request.getParameter("jobLocationTextbox");
		String qual=request.getParameter("jobQualificationTextarea");  
		String exp=request.getParameter("jobExpTextarea");  
		String basicExp=request.getParameter("jobBasicSkillsTextarea");  
		String tech=request.getParameter("jobTechnicalSkillsTextarea");  
		String desc=request.getParameter("jobDescTextarea");
		
		
		 try {
			 
			Context ctx =new InitialContext();
				
			DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
			Connection con=ds.getConnection();

		    String query = "insert into job_details values(default,?,?,?,?,?,?,?)";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query			   
		    ps.setString(1, title);
		    ps.setString(2, loc);
		    ps.setString(3, qual);
		    ps.setString(4, exp);
		    ps.setString(5, basicExp);
		    ps.setString(6, tech);
		    ps.setString(7, desc);
		 //   ps.setInt(5, Integer.parseInt(age));
		    System.out.println("++++++= "+title);
		    System.out.println("++++++= "+loc);
			System.out.println("++++++= "+qual);
			System.out.println("++++++= "+exp);
			System.out.println("++++++= "+basicExp);
			System.out.println("++++++= "+tech);
			System.out.println("++++++= "+desc);
		   

		    ps.executeUpdate(); // execute it on test database
		    System.out.println("successfuly inserted");
		    ps.close();
		    con.close();
		    out.println("<html><body><script>alert('Data Successfully Submitted')</script></body></html>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

	
	
}
