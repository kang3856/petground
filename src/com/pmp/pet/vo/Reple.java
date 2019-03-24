package com.pmp.pet.vo;

import java.sql.Timestamp;

public class Reple {
	
	private int repleNo, userNo, postsNo;
	private String repleContents, boardType;
	private Timestamp repleDate;
	
	public Reple() {
		// TODO Auto-generated constructor stub
	}

	public int getRepleNo() {
		return repleNo;
	}

	public void setRepleNo(int repleNo) {
		this.repleNo = repleNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPostsNo() {
		return postsNo;
	}

	public void setPostsNo(int postsNo) {
		this.postsNo = postsNo;
	}

	public String getRepleContents() {
		return repleContents;
	}

	public void setRepleContents(String repleContents) {
		this.repleContents = repleContents;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public Timestamp getRepleDate() {
		return repleDate;
	}

	public void setRepleDate(Timestamp repleDate) {
		this.repleDate = repleDate;
	}

	
}//Reple() end
