package com.pmp.pet.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Diary {
	private int diaryNo, userNo, cateNo;
	private Date startDate, endDate;
	private String diaryTitle, diaryMemo;
	private Timestamp diaryDate;
	
	public Diary() {
		// TODO Auto-generated constructor stub
	}

	public int getDiaryNo() {
		return diaryNo;
	}

	public void setDiaryNo(int diaryNo) {
		this.diaryNo = diaryNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDiaryTitle() {
		return diaryTitle;
	}

	public void setDiaryTitle(String diaryTitle) {
		this.diaryTitle = diaryTitle;
	}

	public String getDiaryMemo() {
		return diaryMemo;
	}

	public void setDiaryMemo(String diaryMemo) {
		this.diaryMemo = diaryMemo;
	}

	public Timestamp getDiaryDate() {
		return diaryDate;
	}

	public void setDiaryDate(Timestamp diaryDate) {
		this.diaryDate = diaryDate;
	}
	
	
}//Diary() end
