package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.dao.ContactUsDAO;

public class ContactUs extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		

	public DataSource dataSource;
	private ContactUsDAO contactUsDAO;
	    
	public ContactUs(){}
	    
	public void init() {
	 ContactUsDAO = new ContactUsDAO(dataSource);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
		 
			String purposeOfContact=request.getParameter("contactPurposeSelect");
			String companyName=request.getParameter("contactCompanyNameTextbox");
			String name=request.getParameter("contactNameTextbox");
			String mobile=request.getParameter("contactMobNoTextbox");
			String location=request.getParameter("contactLocationTextbox");
			String message=request.getParameter("contactMessageTextarea");
			String phone=request.getParameter("contactPhoneNoTextbox");
			String email=request.getParameter("contactEmailIdTextbox");
			
			if(message.equals("") || message.equals(null))
			{
				message="We look forward to connect.";
			}
			
		try {
				contactUsDAO.contactInfo(purposeOfContact, name, companyName, mobile, phone, location, email, message);
				request.getRequestDispatcher("thankYouPageContactUs.jsp").forward(request, response);			
				
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
       

	 }
}
