package com.pmp.pet.vo;

import java.sql.Timestamp;

public class UsedTag {
	
	private int usedTagNo, tagNo,postsNo;
	private String boardType;
	private Timestamp tagDate;
	
	public UsedTag() {
		// TODO Auto-generated constructor stub
	}

	public int getUsedTagNo() {
		return usedTagNo;
	}

	public void setUsedTagNo(int usedTagNo) {
		this.usedTagNo = usedTagNo;
	}

	public int getTagNo() {
		return tagNo;
	}

	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}

	public int getPostsNo() {
		return postsNo;
	}

	public void setPostsNo(int postsNo) {
		this.postsNo = postsNo;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public Timestamp getTagDate() {
		return tagDate;
	}

	public void setTagDate(Timestamp tagDate) {
		this.tagDate = tagDate;
	}

	
}//UsedTag() end
