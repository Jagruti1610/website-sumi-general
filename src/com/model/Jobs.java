package com.model;

import java.io.Serializable;

public class Jobs implements Serializable{
	
	private String description;
	private String technicalSkills;
	private String basicSkills;
	private String experience;
	private String qualification;
	private String location;
	private String title;
	private int jobId;	
	
	public  int getJobId() {
		return jobId;
	}
	public int setjobId(int jobId) {
		return this.jobId = jobId;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTechnicalSkills() {
		return technicalSkills;
	}
	public void setTechnicalSkills(String technicalSkills) {
		this.technicalSkills = technicalSkills;
	}
	public String getBasicSkills() {
		return basicSkills;
	}
	public void setBasicSkills(String basicSkills) {
		this.basicSkills = basicSkills;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
	
	

}
