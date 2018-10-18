package com.model;

import java.sql.Blob;
import java.io.InputStream;

public class JobApplicant {

	InputStream content;
	String contentType;
	String fileName;
	String alternateContact;
	String contact;
	String applicantLocation;
	String jobTitle;
	String email;
	String name;
	int applicantId;
	
	
	public String fileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public InputStream content() {
		return content;
	}
	public void setContent(InputStream content) {
		this.content = content;
	}
	
	public String contentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	
	public String getAlternateContact() {
		return alternateContact;
	}
	public void setAlternateContact(String alternateContact) {
		this.alternateContact = alternateContact;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getApplicantLocation() {
		return applicantLocation;
	}
	public void setApplicantLocation(String applicantLocation) {
		this.applicantLocation = applicantLocation;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getApplicantId() {
		return applicantId;
	}
	public void setApplicantId(int applicantId) {
		this.applicantId = applicantId;
	}
	
	

}
