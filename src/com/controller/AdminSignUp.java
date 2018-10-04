package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connect.DatabaseConnect;


public class AdminSignUp extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
	

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		System.out.println("In admin sign up");
		          
		String userName=request.getParameter("signUpEmail");  
		String password=request.getParameter("signUpPwd");  
		
		 try {
			 
			   	DatabaseConnect con=new DatabaseConnect(); 

			    String query = "insert into admin_login values(default,?,?)";

			    PreparedStatement ps = con.getConnection().prepareStatement(query); // generates sql query			   
			    ps.setString(1, userName);
			    ps.setString(2, password);
			 //   ps.setInt(5, Integer.parseInt(age));
			    System.out.println("++++++= "+userName);
				System.out.println("++++++= "+password);
			   

			    ps.executeUpdate(); // execute it on test database
			    System.out.println("successfuly inserted");
			    ps.close();
			    con.getConnection().close();
			    out.println("<html><body><script>alert('Successfully registered')</script></body></html>");
			   } catch (SQLException e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			   }
		 
		 		RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
		 		rd.forward(request, response);
	
	}

}
