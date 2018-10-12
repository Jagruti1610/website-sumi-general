package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.io.PrintWriter;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.tomcat.websocket.WrappedMessageHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.model.Jobs;

public class FetchOneRecord extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	
    	
	
	public FetchOneRecord(){}
	
	

	public List<Jobs> fetchJobDetail(int id) throws SQLException {  
		List<Jobs> jobDetailFetchList = new ArrayList<Jobs>();        
      
		Context ctx = null;
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
	
		System.out.println("11111111111111");
		
		try{
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
			
			con = ds.getConnection();
			stmt = con.createStatement();
			
			System.out.println("22222222222222222");
			rs = stmt.executeQuery("select JobId, JobTitle, JobLocation, JobQualification, JobExperience, "
					+ "JobBasicSkills, JobTechnicalSkills, JobDescription from job_details where JobId="+id);
					        
	        while(rs.next())
            {
	        	Jobs job=new Jobs();	        	
	        	
	        	job.setjobId(rs.getInt("JobId"));
	        	job.setTitle(rs.getString("JobTitle"));
	        	job.setLocation(rs.getString("JobLocation"));
	        	job.setQualification(rs.getString("JobQualification"));
	        	job.setExperience(rs.getString("JobExperience"));
	        	job.setBasicSkills(rs.getString("JobBasicSkills"));
	        	job.setTechnicalSkills(rs.getString("JobTechnicalSkills"));
	        	job.setDescription( rs.getString("JobDescription"));
	        	
	        	jobDetailFetchList.add(job);
            }
	        System.out.println("3333333333333333");
	        
	        	return jobDetailFetchList;
	        	
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
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {
		
		 PrintWriter out=response.getWriter();
		
		
	//	HttpSession session=request.getSession();
		System.out.println("44444444444444444");
//		JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
//		int id=Integer.parseInt(data.get("jobId").getAsString());
		int id=Integer.parseInt(request.getParameter("jobId"));	
		System.out.println("jobid= "+id);
		
		
				
		 try {
			 	List<Jobs> jobList = fetchJobDetail(id);
	            System.out.println("55555555555555");
	         //   session.setAttribute("jobDetailFetchList", jobList); 
  	        //    out.print( jobList);
	            
	          //  response.sendRedirect("/candidateViewJobs.jsp");
            
	              
	          //
  	         String jsonString = new Gson().toJson(jobList);
  	         response.setContentType("application/json");
  	         response.setHeader("cache-control", "no-cache");
  			 response.setCharacterEncoding("UTF-8");
  			 System.out.println("jsonString= "+jsonString);
  			 out.write(jsonString);
  			 out.flush();
  	         out.close();
  	        
  			 
  			 
  			
  			  System.out.println("6666666666");
  	            
         
     } catch (SQLException e) {
         throw new ServletException("Cannot obtain jobs from DB", e);
         
     }
		
	
	}
	

}
