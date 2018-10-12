package com.controller;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import java.io.PrintWriter;

import com.dao.JobApplicantDAO;

public class JobApplicantServlet extends HttpServlet {
	 
	
	public DataSource dataSource;
    private JobApplicantDAO jobApplicantDAO;
    
    public JobApplicantServlet(){}
    
    public void init() {
    	jobApplicantDAO = new JobApplicantDAO(dataSource);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
	    String name = request.getParameter("candidateNameTextbox"); 
	    String jobTitle = request.getParameter("candidateJobTitleTextbox");
	    String location = request.getParameter("candidateLocationTextbox");
	    String contact = request.getParameter("candidateContactNumberTextbox");
	    String alternateContact = request.getParameter("alternateContactNumberTextbox");
	    	   
	    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
	    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
	    InputStream fileContent = filePart.getInputStream();
	    
	    
	    
		try {
			jobApplicantDAO.jobApplicantDataSubmit(name, jobTitle, location, contact, alternateContact, fileContent);
			out.println("<html><body><script type=\"text/javascript\">");
		    out.println("alert('Applied Successfully');");
			out.println("location='candidateViewJobs.jsp';");
			out.println("</script></body></html>");
			request.getRequestDispatcher("candidateViewJobs.jsp").forward(request, response);			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	}
}
