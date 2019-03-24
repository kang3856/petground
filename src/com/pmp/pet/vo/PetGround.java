package com.pmp.pet.vo;

import java.sql.Date;
import java.sql.Timestamp;

//명예의 전당
public class PetGround {
	private int groundNo, competitionNo, postsNo;
	private Date groundDate;//펫그라운드 시작 기간
	private String boardType;
	private Timestamp petGroundDate;
	
	public PetGround() {
		// TODO Auto-generated constructor stub
	}

	public int getGroundNo() {
		return groundNo;
	}

	public int getCompetitionNo() {
		return competitionNo;
	}

	public void setCompetitionNo(int competitionNo) {
		this.competitionNo = competitionNo;
	}

	public int getPostsNo() {
		return postsNo;
	}

	public void setPostsNo(int postsNo) {
		this.postsNo = postsNo;
	}

	public Date getGroundDate() {
		return groundDate;
	}

	public void setGroundDate(Date groundDate) {
		this.groundDate = groundDate;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public Timestamp getPetGroundDate() {
		return petGroundDate;
	}

	public void setPetGroundDate(Timestamp petGroundDate) {
		this.petGroundDate = petGroundDate;
	}

	public void setGroundNo(int groundNo) {
		this.groundNo = groundNo;
	}

	
}//PetGround() end
