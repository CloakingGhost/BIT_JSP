package org.ai.beans;

public class Members {
	private String userId;
	private String userPw;
	private String userName;
	private String phoneNo;
	private String address;
	private String email;
	private String regDate;

	public Members() {
	}

	public Members(String userId, String userPw, String userName, String phoneNo, String address, String email) {
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.phoneNo = phoneNo;
		this.address = address;
		this.email = email;

	}

	public Members(String userId, String userPw, String userName, String phoneNo, String address, String email,
			String regDate) {
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.phoneNo = phoneNo;
		this.address = address;
		this.email = email;
		this.regDate = regDate;

	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String name) {
		this.userName = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

}
