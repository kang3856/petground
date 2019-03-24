package com.pmp.pet.vo;

import java.sql.Date;

public class Pride {
	private int prideNo, userNo;
	
	public Pride() {
		// TODO Auto-generated constructor stub
	}
	
	public int getPrideNo() {
		return prideNo;
	}
	public void setPrideNo(int prideNo) {
		this.prideNo = prideNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getPrideContents() {
		return prideContents;
	}
	public void setPrideContents(String prideContents) {
		this.prideContents = prideContents;
	}
	public Date getPrideDate() {
		return prideDate;
	}
	public void setPrideDate(Date prideDate) {
		this.prideDate = prideDate;
	}
	private String prideContents;
	private Date prideDate;
}
