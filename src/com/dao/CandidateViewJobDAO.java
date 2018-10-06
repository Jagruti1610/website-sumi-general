package com.dao;

import java.io.IOException;
import java.io.PrintWriter;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import com.util.DataSourceFactory;
import com.model.Jobs;

public class CandidateViewJobDAO {
	
	DataSource dataSource = null;
	
	 
	    public CandidateViewJobDAO(DataSource dataSource) {
	        this.dataSource = dataSource;
	    }

	    public List<Jobs> jobs() throws SQLException {
	        List<Jobs> jobList = new ArrayList<Jobs>();        
	          
	      
			Context ctx = null;
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try{
				ctx = new InitialContext();
				DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
				
				con = ds.getConnection();
				stmt = con.createStatement();
				
				rs = stmt.executeQuery("select JobId, JobTitle, JobLocation, JobQualification, JobExperience, JobBasicSkills, JobTechnicalSkills, JobDescription from job_details");
						        
		        while(rs.next())
	            {
		        	Jobs job=new Jobs();
		        	
		        	job.setjobId(Integer.parseInt(rs.getString("JobId")));  	
		        	job.setTitle(rs.getString("JobTitle"));
		        	job.setLocation(rs.getString("JobLocation"));
		        	job.setQualification(rs.getString("JobQualification"));
		        	job.setExperience(rs.getString("JobExperience"));
		        	job.setBasicSkills(rs.getString("JobBasicSkills"));
		        	job.setTechnicalSkills(rs.getString("JobTechnicalSkills"));
		        	job.setDescription( rs.getString("JobDescription"));
		        	
		        	jobList.add(job);
	               
	            }
	         
		        return jobList;
				
				
			}catch(NamingException | SQLException e ){
				e.printStackTrace();
				return null;
				
			}finally{
				try {
					rs.close();
					stmt.close();
					con.close();
					ctx.close();
				} catch (SQLException e) {
					System.out.println("Exception in closing DB resources");
				} catch (NamingException e) {
					System.out.println("Exception in closing Context");
				}
				
			}
		
	}

		
	

}
