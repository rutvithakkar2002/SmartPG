package com.bean;

public class SubscriptionBean {
	private int subid;
	private String offername;
	private String timeduration;
	private float amount;
	
	
	public int getSubid() {
		return subid;
	}
	public void setSubid(int subid) {
		this.subid = subid;
	}
	
	
	public String getOffername() {
		return offername;
	}
	public void setOffername(String offername) {
		this.offername = offername;
	}
	public String getTimeduration() {
		return timeduration;
	}
	public void setTimeduration(String timeduration) {
		this.timeduration = timeduration;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
}
