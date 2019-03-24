package com.pmp.pet.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.SimpleFormatter;

public class Pet {
	
	Calendar cal = Calendar.getInstance();
	private int petNo,userNo,kindNo;
	private String petName , petSex,petPicture , petType,kind;
	public String getKind() {
		return kind;
	}

	public Pet(int userNo, int kindNo, String petName, String petSex, String petPicture, Date petBirthDay) {
		super();
		this.userNo = userNo;
		this.kindNo = kindNo;
		this.petName = petName;
		this.petSex = petSex;
		this.petPicture = petPicture;
		this.petBirthDay = petBirthDay;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getPetType() {
		return petType;
	}

	public void setPetType(String petType) {
		this.petType = petType;
	}
	private Date petBirthDay, petDate;
	
	
	
	SimpleDateFormat df = new SimpleDateFormat("yyyy");
	
	public Pet() {
		// TODO Auto-generated constructor stub
	}
	
	public int getPetNo() {
		return petNo;
	}
	public void setPetNo(int petNo) {
		this.petNo = petNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getKindNo() {
		return kindNo;
	}
	public void setKindNo(int kindNo) {
		this.kindNo = kindNo;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetSex() {
		return petSex;
	}
	public void setPetSex(String petSex) {
		this.petSex = petSex;
	}
	public String getPetPicture() {
		return petPicture;
	}
	public void setPetPicture(String petPicture) {
		this.petPicture = petPicture;
	}
	public Date getPetBirthDay() {
		return petBirthDay;
	}
	public void setPetBirthDay(Date petBirthDay) {
		this.petBirthDay = petBirthDay;
	}
	public Date getPetDate() {
		return petDate;
	}
	public void setPetDate(Date petDate) {
		this.petDate = petDate;
	}
	
}
