package com.pmp.pet.vo;

import java.sql.Timestamp;

public class Category {

	private int cateNo;
	private String cateContents;
	private Timestamp cateDate;
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getCateContents() {
		return cateContents;
	}

	public void setCateContents(String cateContents) {
		this.cateContents = cateContents;
	}

	public Timestamp getCateDate() {
		return cateDate;
	}

	public void setCateDate(Timestamp cateDate) {
		this.cateDate = cateDate;
	}
	
}//Category() end
