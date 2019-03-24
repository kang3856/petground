package com.pmp.pet.vo;

public class PetType {

	public PetType() {
		// TODO Auto-generated constructor stub
	}
	public int getKindNo() {
		return kindNo;
	}
	public void setKindNo(int kindNo) {
		this.kindNo = kindNo;
	}
	public String getKind() {
		return kind;
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
	private int kindNo;
	private String kind , petType;
}
