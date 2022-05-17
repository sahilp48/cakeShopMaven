package com.model;

public class Logindetails {

	private String name;
	private String password;
	private String mobileNumber;

	public String getMobileNumber() {
		return mobileNumber;
	}

	public Logindetails(String name, String password, String mobileNumber) {
		super();
		this.name = name;
		this.password = password;
		this.mobileNumber = mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Logindetails() {

	}
}
