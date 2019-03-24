package com.pmp.pet.vo;

import java.sql.Timestamp;

public class PridePicture {
	private int pridePictureNo, prideNo;
	private String pridePictureUrl;
	private Timestamp pridePictureDate;
	
	public PridePicture() {
		// TODO Auto-generated constructor stub
	}

	public int getPridePictureNo() {
		return pridePictureNo;
	}

	public void setPridePictureNo(int pridePictureNo) {
		this.pridePictureNo = pridePictureNo;
	}

	public int getPrideNo() {
		return prideNo;
	}

	public void setPrideNo(int prideNo) {
		this.prideNo = prideNo;
	}

	public String getPridePictureUrl() {
		return pridePictureUrl;
	}

	public void setPridePictureUrl(String pridePictureUrl) {
		this.pridePictureUrl = pridePictureUrl;
	}

	public Timestamp getPridePictureDate() {
		return pridePictureDate;
	}

	public void setPridePictureDate(Timestamp pridePictureDate) {
		this.pridePictureDate = pridePictureDate;
	}
	
}//PridePicture() end
