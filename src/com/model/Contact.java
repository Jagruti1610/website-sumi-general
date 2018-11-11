package com.model;

public class Contact {

	private String contactName;
	private String contactCompany;
	private String contactMobile;
	private String contactPhone; // varchar(20) 
	private String contactLocation;
	private String contactEmail;
	private String contactMessage;
	private String contactPurpose;
	private int contactId;
	
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactCompany() {
		return contactCompany;
	}
	public void setContactCompany(String contactCompany) {
		this.contactCompany = contactCompany;
	}
	public String getContactMobile() {
		return contactMobile;
	}
	public void setContactMobile(String contactMobile) {
		this.contactMobile = contactMobile;
	}
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	public String getContactLocation() {
		return contactLocation;
	}
	public void setContactLocation(String contactLocation) {
		this.contactLocation = contactLocation;
	}
	public String getContactEmail() {
		return contactEmail;
	}
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	public String getContactMessage() {
		return contactMessage;
	}
	
	public String getContactPurpose() {
		return contactPurpose;
	}
	public void setContactPurpose(String contactPurpose) {
		this.contactPurpose = contactPurpose;
	}
	
	public void setContactMessage(String contactMessage) {
		this.contactMessage = contactMessage;
	}
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	
}
