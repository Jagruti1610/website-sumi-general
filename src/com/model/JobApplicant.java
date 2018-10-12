package com.model;

import java.sql.Blob;
import java.io.InputStream;

public class JobApplicant {

	InputStream resume;
	String alternateContact;
	String contact;
	String applicantLocation;
	String jobTitle;
	String name;
	int applicantId;
	
	public InputStream getResume() {
		return resume;
	}
	public void setResume(InputStream resume) {
		this.resume = resume;
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
