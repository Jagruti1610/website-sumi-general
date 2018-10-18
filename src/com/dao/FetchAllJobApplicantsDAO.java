package com.dao;

import javax.sql.DataSource;
import java.io.Serializable;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

import com.model.JobApplicant;


// FETCHES ALL JOB APPLICANTS FOR ADMIN

public class FetchAllJobApplicantsDAO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4343045161837481834L;

	DataSource dataSource=null;
	
	Context ctx = null;
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
		
	public FetchAllJobApplicantsDAO(){}
	
	public FetchAllJobApplicantsDAO(DataSource dataSource){
		this.dataSource=dataSource;
	}
	
	public List<JobApplicant> fetchAllApplicants() throws SQLException, IOException{
		 List<JobApplicant> jobApplicantsList=new ArrayList<>();
		 
		 try {
			ctx=new  InitialContext();
			DataSource ds=(DataSource)ctx.lookup("java:/comp/env/jdbc/javabase");
			con=ds.getConnection();
			stmt=con.createStatement();
			
			rs=stmt.executeQuery("SELECT `applicantId`, `name`, `email`, `jobTitle`, `applicantLocation`, `contact`, `alternateContact` FROM `job_applicant_info`");
			// , `fileName`, `contentType`, `content`
			while(rs.next())
			{
				JobApplicant jobApplicant=new JobApplicant();
				
				jobApplicant.setApplicantId(rs.getInt("applicantId"));
				jobApplicant.setName(rs.getString("name"));
				jobApplicant.setEmail(rs.getString("email"));
				jobApplicant.setJobTitle(rs.getString("jobTitle"));
				jobApplicant.setApplicantLocation(rs.getString("applicantLocation"));
				jobApplicant.setContact(rs.getString("contact"));
				jobApplicant.setAlternateContact(rs.getString("alternateContact"));
//				jobApplicant.setFileName(rs.getString("fileName"));
//				jobApplicant.setContentType(rs.getString("contentType"));
//				jobApplicant.setContent(rs.getBinaryStream("content"));
//				
				jobApplicantsList.add(jobApplicant);
				
				
			/*	Blob blob=rs.getBlob("resume");
			//	BufferedInputStream is = new BufferedInputStream(blob.getBinaryStream());
				InputStream binaryStream = rs.getBinaryStream("resume");
			//	FileOutputStream fos = new FileOutputStream(file);
				   // you can set the size of the buffer
				System.out.println("binary stream= "+binaryStream);
				PdfReader reader = new PdfReader(input);
			    binaryStream.close();
				   */
				
			}
			
			return jobApplicantsList;
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
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
