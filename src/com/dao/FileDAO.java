package com.dao;

import java.io.IOException;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.File;


public class FileDAO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 613793462696725297L;
	
	DataSource dataSource=null;
	
	public FileDAO(DataSource dataSource)
	{
		this.dataSource=dataSource;
	}
	
	public FileDAO() {
		// TODO Auto-generated constructor stub
	}

	public File findFile(int id)
	{
		Context ctx=null;
		Connection con=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		
		try {
			ctx=new InitialContext();
			DataSource ds=(DataSource) ctx.lookup("java:/comp/env/jdbc/javabase");
			con=ds.getConnection();
			rs=con.prepareStatement("select applicantId, fileName, contentType, content from job_applicant_info where applicantId="+id).executeQuery();
			//stmt.setInt(1, id);
		//	stmt.executeUpdate();
			
			File file=new File();

			while(rs.next())
			{
				file.setId(rs.getInt("applicantId"));
				file.setFileName(rs.getString("fileName"));
				file.setContentType(rs.getString("contentType"));
				file.setContent(rs.getBinaryStream("content"));
				
			}				
			
			//	long fileLength = 0;
				long fileLength = file.getContent().toString().length();
				System.out.println("File length= "+fileLength);
				
				
				file.setLength(fileLength);
			
			
				
			return file;
				
			}catch(NamingException | SQLException e ){
				e.printStackTrace();
				return null;
				
			}finally{
				try {
					rs.close();
					//stmt.close();
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
