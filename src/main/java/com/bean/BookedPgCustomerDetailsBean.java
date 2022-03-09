package com.bean;

public class BookedPgCustomerDetailsBean {
	private int bookedid;
	private int userId;
	private int pgid;
	private boolean requestaccept;
	private String datetimeofbooking;
	public int getBookedid() {
		return bookedid;
	}
	public void setBookedid(int bookedid) {
		this.bookedid = bookedid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getPgid() {
		return pgid;
	}
	public void setPgid(int pgid) {
		this.pgid = pgid;
	}
	public boolean isRequestaccept() {
		return requestaccept;
	}
	public void setRequestaccept(boolean requestaccept) {
		this.requestaccept = requestaccept;
	}
	public String getDatetimeofbooking() {
		return datetimeofbooking;
	}
	public void setDatetimeofbooking(String datetimeofbooking) {
		this.datetimeofbooking = datetimeofbooking;
	}
}
