package com.controller;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import com.model.File;

import java.io.PrintWriter;

import com.dao.JobApplicantDAO;



/* UPLOADS FILE IN BINARY FORMAT TO SERVER  */

@MultipartConfig
public class JobApplicantServlet extends HttpServlet {
	 
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public DataSource dataSource;
    private JobApplicantDAO jobApplicantDAO;
    
    public JobApplicantServlet(){}
    
    public void init() {
    	jobApplicantDAO = new JobApplicantDAO(dataSource);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
	    String name = request.getParameter("candidateNameTextbox"); 
	    String email=request.getParameter("candidateEmailTextbox");
	    String jobTitle = request.getParameter("jobTitleSelect");
	    String location = request.getParameter("candidateLocationTextbox");
	    String contact = request.getParameter("candidateContactNumberTextbox");
	    String alternateContact = request.getParameter("alternateContactNumberTextbox");
	    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
	    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
	    InputStream fileContent = filePart.getInputStream();
	    
	    String nameOfFile=fileName.toString();
	    String contentType= nameOfFile.substring(nameOfFile.lastIndexOf(".") + 1);
	    
	  /* SIZE OF FILE */
	    System.out.println((request.getPart("file").getSize())/1024);
	    Double contentLength = (double) request.getPart("file").getSize();
	    System.out.println("Length1111->= "+request.getHeaders("Content-Length"));
	   
	    System.out.println("FilePart= "+filePart);
	    System.out.println("File extension= "+ contentType);
	    System.out.println("fileName= "+ fileName);
	    System.out.println("name= "+name);
	    System.out.println("jobTitle= "+jobTitle);
	    System.out.println("location= "+location);
	    System.out.println("contact= "+contact);
	    System.out.println("alternateContact= "+alternateContact);
	    System.out.println("content= "+fileContent.toString());
	   
	    
	    
		try {
			
			jobApplicantDAO.jobApplicantDataSubmit(name, email, jobTitle, location, contact, alternateContact, fileName, contentType, contentLength,  fileContent);
			request.getRequestDispatcher("thankYouPageCandidateViewJobs.jsp").forward(request, response);			
			
			
		} catch (SQLException | NullPointerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	}
}
