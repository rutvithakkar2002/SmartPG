package com.bean;

public class PgRateBean {
	private int pgrateid;
	private int pgid;
	
	private String pgname;
	private String pgaddress;
	private String city;
	private String state;
	private int onesharing;
	private int twosharing;
	private int threesharing;
	private int foursharing;
	public int getPgrateid() {
		return pgrateid;
	}
	public void setPgrateid(int pgrateid) {
		this.pgrateid = pgrateid;
	}
	public int getPgid() {
		return pgid;
	}
	public void setPgid(int pgid) {
		this.pgid = pgid;
	}
	
	public String getPgname() {
		return pgname;
	}
	public void setPgname(String pgname) {
		this.pgname = pgname;
	}
	public String getPgaddress() {
		return pgaddress;
	}
	public void setPgaddress(String pgaddress) {
		this.pgaddress = pgaddress;
	}
	
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getOnesharing() {
		return onesharing;
	}
	public void setOnesharing(int onesharing) {
		this.onesharing = onesharing;
	}
	public int getTwosharing() {
		return twosharing;
	}
	public void setTwosharing(int twosharing) {
		this.twosharing = twosharing;
	}
	public int getThreesharing() {
		return threesharing;
	}
	public void setThreesharing(int threesharing) {
		this.threesharing = threesharing;
	}
	public int getFoursharing() {
		return foursharing;
	}
	public void setFoursharing(int foursharing) {
		this.foursharing = foursharing;
	}
}
