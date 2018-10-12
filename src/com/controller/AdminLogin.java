package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


public class AdminLogin extends HttpServlet{ 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
				
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		
		String userName=request.getParameter("email");
		String password=request.getParameter("pwd");
		String uname,pwd = null;
				
		try { 
				Context ctx =new InitialContext();
				
				DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
				Connection con=ds.getConnection();
				
				String query = "select * from admin_login";
				Statement st = con.createStatement();				
				ResultSet rs = st.executeQuery(query);
				
				if(rs.next())
				{
					uname=rs.getString("username");
					pwd=rs.getString("password");
					
				}
				
				if(userName.equals(userName) && password.equals(pwd))
				{
					request.getRequestDispatcher("adminHomePage.jsp").forward(request,response);;
					System.out.println("Successfully Logged in");
					con.close();
					return;
					
				}
				else
				{
					request.getRequestDispatcher("adminErrorPage.jsp").forward(request, response);
					con.close();
					return;
				}
				
				
				} catch (SQLException | NamingException e) {
				    // TODO Auto-generated catch block
					    e.printStackTrace();
				 }finally{
					 
				 }
		
	}

}
