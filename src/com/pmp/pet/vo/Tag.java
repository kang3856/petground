package com.pmp.pet.vo;

import java.sql.Timestamp;

public class Tag {
	
	private int tagNo;
	private String tagContents;
	private Timestamp tagDate;
	
	public Tag() {
		// TODO Auto-generated constructor stub
	}

	public int getTagNo() {
		return tagNo;
	}

	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}

	public String getTagContents() {
		return tagContents;
	}

	public void setTagContents(String tagContents) {
		this.tagContents = tagContents;
	}

	public Timestamp getTagDate() {
		return tagDate;
	}

	public void setTagDate(Timestamp tagDate) {
		this.tagDate = tagDate;
	}
		
}//Tag() end
