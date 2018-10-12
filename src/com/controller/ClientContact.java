package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.dao.ClientContactDAO;
import com.model.Client;
import com.model.Jobs;

public class ClientContact extends HttpServlet{
	
	private String clientName;
	private String clientCompany;
	private String clientMobile;
	private String clientPhone; // varchar(20) 
	private String clientLocation;
	private String clientEmail;
	private String clientMessage;		

	public DataSource dataSource;
	private ClientContactDAO clientContactDAO;
	    
	public ClientContact(){}
	    
	public void init() {
	 clientContactDAO = new ClientContactDAO(dataSource);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
		 
		 
			String companyName=request.getParameter("clientCompanyNameTextbox");
			String name=request.getParameter("clientNameTextbox");
			String mobile=request.getParameter("clientMobNoTextbox");
			String location=request.getParameter("clientLocationTextbox");
			String message=request.getParameter("clientMessageTextarea");
			String phone=request.getParameter("clientPhoneNoTextbox");
			String email=request.getParameter("clientEmailIdTextbox");
			
			if(message.equals("") || message.equals(null))
			{
				message="We look forward to connect.";
			}
			
		try {
				clientContactDAO.clientInfo(name, companyName, mobile, phone, location, email, message);
				//out.println("<html><body><script>alert('Successfully Submitted')</script></body></html>");
				out.println("<script type=\"text/javascript\">");
			    out.println("alert('Successfully Submitted');");
				out.println("location='clientContact.jsp';");
				out.println("</script>");
				request.getRequestDispatcher("clientContact.jsp").forward(request, response);			
				
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
       

	 }
}
