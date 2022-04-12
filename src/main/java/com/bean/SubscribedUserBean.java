package com.bean;

public class SubscribedUserBean {
	private int subscribeid;
	private int userId;
	
	private String firstName;
	private String lastName;
	private String email;
	private int subid;
	private String startdateofsub;
	private String enddateofsub;
	public int getSubscribeid() {
		return subscribeid;
	}
	public void setSubscribeid(int subscribeid) {
		this.subscribeid = subscribeid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSubid() {
		return subid;
	}
	public void setSubid(int subid) {
		this.subid = subid;
	}
	public String getStartdateofsub() {
		return startdateofsub;
	}
	public void setStartdateofsub(String startdateofsub) {
		this.startdateofsub = startdateofsub;
	}
	public String getEnddateofsub() {
		return enddateofsub;
	}
	public void setEnddateofsub(String enddateofsub) {
		this.enddateofsub = enddateofsub;
	}
}
