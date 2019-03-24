package com.pmp.pet.vo;

import java.sql.Date;

public class Free {
	
	
	private int freeNo, userNo;
	private String freeTitle, freeCategory, freeContents, freePicture;
	private Date freeDate;
	
	public Free() {
		// TODO Auto-generated constructor stub
	}

	public int getFreeNo() {
		return freeNo;
	}

	public void setFreeNo(int freeNo) {
		this.freeNo = freeNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getFreeTitle() {
		return freeTitle;
	}

	public void setFreeTitle(String freeTitle) {
		this.freeTitle = freeTitle;
	}

	public String getFreeCategory() {
		return freeCategory;
	}

	public void setFreeCategory(String freeCategory) {
		this.freeCategory = freeCategory;
	}

	public String getFreeContents() {
		return freeContents;
	}

	public void setFreeContents(String freeContents) {
		this.freeContents = freeContents;
	}

	public String getFreePicture() {
		return freePicture;
	}

	public void setFreePicture(String freePicture) {
		this.freePicture = freePicture;
	}

	public Date getFreeDate() {
		return freeDate;
	}

	public void setFreeDate(Date freeDate) {
		this.freeDate = freeDate;
	}

	
	
	
}
