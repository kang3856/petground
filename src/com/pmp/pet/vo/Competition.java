package com.pmp.pet.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Competition {

	private int competitionNo, usedPP, postsNo;
	private Date startDate;
	private String boardType;
	private Timestamp competitionDate;
	
	public Competition() {
		// TODO Auto-generated constructor stub
	}

	public int getCompetitionNo() {
		return competitionNo;
	}

	public void setCompetitionNo(int competitionNo) {
		this.competitionNo = competitionNo;
	}

	public int getUsedPP() {
		return usedPP;
	}

	public void setUsedPP(int usedPP) {
		this.usedPP = usedPP;
	}

	public int getPostsNo() {
		return postsNo;
	}

	public void setPostsNo(int postsNo) {
		this.postsNo = postsNo;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public Timestamp getCompetitionDate() {
		return competitionDate;
	}

	public void setCompetitionDate(Timestamp competitionDate) {
		this.competitionDate = competitionDate;
	}

	
}//Competition() end
