package com.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.io.Closeable;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.dao.FileDAO;
import com.model.File;

/**
 * Servlet implementation class FileServlet
 */

public class FileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final int DEFAULT_BUFFER_SIZE = 10240; // 10KB.
	
	private static FileDAO fileDAO = new FileDAO();
	
    public FileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String fileId = request.getParameter("id");

	        // Check if ID is supplied to the request.
	     if (fileId == null) {
	         // Do your thing if the ID is not supplied to the request.
	        // Throw an exception, or send 404, or show default/warning page, or just ignore it.
	         response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
	         return;
	     }
	     
	     
	  // Lookup File by FileId in database.
	        // Do your "SELECT * FROM File WHERE FileID" thing.
	        File file = fileDAO.findFile(Integer.parseInt(fileId));
	        
	        

	        // Check if file is actually retrieved from database.
	        if (file == null) {
	            // Do your thing if the file does not exist in database.
	            // Throw an exception, or send 404, or show default/warning page, or just ignore it.
	            response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
	            return;
	        }
	        
	        String mimeType = getServletContext().getMimeType(file.getFileName());
	        // Init servlet response.
	        response.reset(); 
	        response.setBufferSize(DEFAULT_BUFFER_SIZE);
	        //response.setContentType(file.getContentType());
	        response.setContentType(mimeType);
	     //   response.setContentType("application/pdf");
	        response.setHeader("Content-Length", String.valueOf(file.getLength()));
	        response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getFileName() + "\"");
	        

	        // Prepare streams.
	        BufferedInputStream input = null;
	        BufferedOutputStream output = null;
	     //   ServletOutputStream sos = response.getOutputStream();
	        
	        try {
	            // Open streams.
	            input = new BufferedInputStream(file.getContent(), DEFAULT_BUFFER_SIZE);
	            output = new BufferedOutputStream(response.getOutputStream(), DEFAULT_BUFFER_SIZE);

	            // Write file contents to response.
	            byte[] buffer = new byte[DEFAULT_BUFFER_SIZE];
	            int length;
	            while ((length = input.read(buffer)) > 0) {
	                output.write(buffer, 0, length);
	            }
	            
	            	           
	        } finally {
	            // Gently close streams.
	            close(output);
	            close(input);
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	// Helpers (can be refactored to public utility class) ----------------------------------------

    private static void close(Closeable resource) {
        if (resource != null) {
            try {
                resource.close();
            } catch (IOException e) {
                // Do your thing with the exception. Print it, log it or mail it.
                e.printStackTrace();
            }
        }
    }
    
    public static String toHex(byte[] bytes) {
        BigInteger bi = new BigInteger(1, bytes);
        return String.format("%0" + (bytes.length << 1) + "X", bi);
    }
    

}
