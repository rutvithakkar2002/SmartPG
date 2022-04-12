package com.bean;

public class BookedPgCustomerDetailsBean {
	private int bookedid;
	private int userId;

	private String firstName;
	private String lastName;
	private String email;

	private int pgid;
	private String pgname;
	private String pgaddress;
	private String city;

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
