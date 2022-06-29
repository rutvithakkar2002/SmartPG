package com.bean;

public class PaymentsBean {

	String cardNo;

	private int paymentId;
	private int userId;
	private String amounts;
	private int pgid;

	private String paymentDate;
	private String paymentStatusCode;
	private String paymentStatus;

	private int subid;
	private String nameonCard;
	private String expiryDate;
	private String cvv;

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAmounts() {
		return amounts;
	}

	public void setAmounts(String amounts) {
		this.amounts = amounts;
	}

	public int getPgid() {
		return pgid;
	}

	public void setPgid(int pgid) {
		this.pgid = pgid;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentStatusCode() {
		return paymentStatusCode;
	}

	public void setPaymentStatusCode(String paymentStatusCode) {
		this.paymentStatusCode = paymentStatusCode;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	public String getNameonCard() {
		return nameonCard;
	}

	public void setNameonCard(String nameonCard) {
		this.nameonCard = nameonCard;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

}
