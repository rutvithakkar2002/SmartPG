package com.bean;

public class TransactionDetailsBean {
	private int transactionid;
	private int userId;
	
	private String firstName;
	private String lastName;
	private String email;
	
	
	private int paymentid;
	private String transactionfor;
	private int amountpaid;
	private String modeofpayment;
	private String dateandtime;
	private String paymentgatewayused;
	public int getTransactionid() {
		return transactionid;
	}
	public void setTransactionid(int transactionid) {
		this.transactionid = transactionid;
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
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public String getTransactionfor() {
		return transactionfor;
	}
	public void setTransactionfor(String transactionfor) {
		this.transactionfor = transactionfor;
	}
	public int getAmountpaid() {
		return amountpaid;
	}
	public void setAmountpaid(int amountpaid) {
		this.amountpaid = amountpaid;
	}
	public String getModeofpayment() {
		return modeofpayment;
	}
	public void setModeofpayment(String modeofpayment) {
		this.modeofpayment = modeofpayment;
	}
	public String getDateandtime() {
		return dateandtime;
	}
	public void setDateandtime(String dateandtime) {
		this.dateandtime = dateandtime;
	}
	public String getPaymentgatewayused() {
		return paymentgatewayused;
	}
	public void setPaymentgatewayused(String paymentgatewayused) {
		this.paymentgatewayused = paymentgatewayused;
	}
}
