package com.pmp.pet.vo;

import java.sql.Date;

import com.sun.jmx.snmp.Timestamp;

public class User {
	private int userNo;
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	private String id,password,nickname,sex,email,userPictureUrl,camp;
	private Date birthday;
	private Timestamp userDate;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserPictureUrl() {
		return userPictureUrl;
	}

	public void setUserPictureUrl(String userPictureUrl) {
		this.userPictureUrl = userPictureUrl;
	}

	public String getCamp() {
		return camp;
	}

	public void setCamp(String camp) {
		this.camp = camp;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Timestamp getUserDate() {
		return userDate;
	}

	public void setUserDate(Timestamp userDate) {
		this.userDate = userDate;
	}

	public User(String id, String password, String nickname, String sex, String email, String userPictureUrl,
			String camp, Date birthday, Timestamp userDate) {
		super();
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.sex = sex;
		this.email = email;
		this.userPictureUrl = userPictureUrl;
		this.camp = camp;
		this.birthday = birthday;
		this.userDate = userDate;
	}
	
	
}
