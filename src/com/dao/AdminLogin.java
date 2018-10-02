package com.dao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AdminLogin extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("In admin login");
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		System.out.println("In admin login");
		          
		String userName=request.getParameter("email");
		String password=request.getParameter("pwd");
		String uname,pwd = null;
				
		try {
					 
				Class.forName("com.mysql.jdbc.Driver");
					    // loads mysql driver

				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumi_production", "root",""); 

				String query = "select * from admin_login";
				Statement st = con.createStatement();				
				ResultSet rs = st.executeQuery(query);
				
				System.out.println("++++++= "+userName);
				System.out.println("++++++= "+password);
				
				if(rs.next())
				{
					uname=rs.getString("username");
					pwd=rs.getString("password");
					
				}
				
				if(userName.equals(userName) && password.equals(pwd))
				{
					response.sendRedirect("adminHomePage.jsp");
					System.out.println("Successfully Logged in");
					con.close();
					return;
					
				}
				else
				{
					response.sendRedirect("adminErrorPage.jsp");
					con.close();
					return;
				}
				
				
				} catch (ClassNotFoundException | SQLException e) {
				    // TODO Auto-generated catch block
					    e.printStackTrace();
				 }finally{
					 
				 }
		
		
				 
				 		
		
		
	}

}
