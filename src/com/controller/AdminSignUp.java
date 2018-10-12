package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

public class AdminSignUp extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
	

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
				          
		String userName=request.getParameter("signUpEmail");  
		String password=request.getParameter("signUpPwd");  
		
		 try {
			 
			 	Context ctx =new InitialContext();
				
			 	DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
			 	Connection con=ds.getConnection(); 

			    String query = "insert into admin_login values(default,?,?)";

			    PreparedStatement ps = con.prepareStatement(query); // generates sql query			   
			    ps.setString(1, userName);
			    ps.setString(2, password);
			 //   ps.setInt(3, Integer.parseInt(id));
			    ps.executeUpdate();

			    request.getRequestDispatcher("adminLogin.jsp");
			    out.println("<html><body><script>alert('Registered successfully')</script></body></html>");
			   } catch (SQLException e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			   } catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 		RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
		 		rd.forward(request, response);
	
	}

}
