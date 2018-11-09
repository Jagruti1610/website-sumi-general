package com.model;

import java.io.InputStream;

public class File {
	
	private int id;
    private String fileName;
    private String contentType;
    private InputStream content;
    private double length;
   

	
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public InputStream getContent() {
		return content;
	}
	public void setContent(InputStream content) {
		this.content = content;
	}
	public double getLength() {
		return length;
	}
	public void setLength(double length) {
		this.length=length;
			
	}
	
	

}
