package com.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.List;

import com.dao.FetchAllJobApplicantsDAO;
import com.google.gson.Gson;
import com.model.JobApplicant;
/**
 * Servlet implementation class FetchAllJobApplicants
 */

// FETCHED ALL JOB APPLICANTS FOR ADMIN

public class FetchAllJobApplicants extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private static final int DEFAULT_BUFFER_SIZE = 10240; // 10KB.

	
    FetchAllJobApplicantsDAO jobApplicants=new FetchAllJobApplicantsDAO();
	
    public FetchAllJobApplicants() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		
		try {
			List<JobApplicant> applicantList=jobApplicants.fetchAllApplicants();
			String jsonStringAllJobApplicant=new Gson().toJson(applicantList);
			response.setContentType("application/json");
			response.setHeader("cache-control", "no-cache");
			response.setCharacterEncoding("UTF-8");
 			System.out.println("jsonString= "+jsonStringAllJobApplicant);
 			out.write(jsonStringAllJobApplicant);
 			out.flush();
 	        out.close();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
