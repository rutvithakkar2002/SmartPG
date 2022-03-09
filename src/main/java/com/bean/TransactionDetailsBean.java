package com.bean;

public class TransactionDetailsBean {
	private int transactionid;
	private int userId;
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
