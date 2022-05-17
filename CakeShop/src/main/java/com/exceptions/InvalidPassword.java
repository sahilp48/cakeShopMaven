package com.exceptions;

public class InvalidPassword extends Exception{
public static String errorMsg;
	public InvalidPassword(String msg) {
		super(msg);
//		errorMsg="Invalid credintials";
	}

}
