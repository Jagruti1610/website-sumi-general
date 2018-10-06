package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.dao.CandidateViewJobDAO;
import com.model.Jobs;

public class CandidateViewJob extends HttpServlet {
	
		
    public DataSource dataSource;
    private CandidateViewJobDAO candidateViewJobDAO;
    
    public CandidateViewJob(){}
    
    public void init() {
    	candidateViewJobDAO = new CandidateViewJobDAO(dataSource);
    }
    
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
        try {
	            List<Jobs> jobList = candidateViewJobDAO.jobs();
	            request.setAttribute("jobList", jobList); // Will be available as ${jobList} in JSP
	            request.getRequestDispatcher("/candidateViewJobs.jsp");/*.forward(request, response);
	            if(!response.isCommitted())
	            {
	            	request.getRequestDispatcher("/candidateViewJobs.jsp").forward(request, response);
	            }*/
            
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain jobs from DB", e);
        }
          


    }
}
