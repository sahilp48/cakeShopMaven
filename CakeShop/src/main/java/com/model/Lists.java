package com.model;

import java.awt.List;
import java.util.ArrayList;

public class Lists {
	public static ArrayList<Customer> orderList = new ArrayList<>();
	public static ArrayList<Cake> cakeList = new ArrayList<>();
	public static ArrayList<String> cakeNamesList = new ArrayList<>();
	public static ArrayList<Logindetails> userLoginList = new ArrayList<>();
	

	public static ArrayList<Logindetails> getUserLoginList() {
		return userLoginList;
	}
	public static void setUserLoginList(ArrayList<Logindetails> userLoginList) {
		Lists.userLoginList = userLoginList;
	}
	public static ArrayList<String> getCakeNamesList() {
		return cakeNamesList;
	}
	public static void setCakeNamesList(ArrayList<String> cakeNamesList) {
		Lists.cakeNamesList = cakeNamesList;
	}
	public ArrayList<Customer> getOrderList() {
		return orderList;
	}
	public void setOrderList(ArrayList<Customer> c1) {
		this.orderList = c1;
	}
	public ArrayList<Cake> getCakeList() {
		return cakeList;
	}
	public void setCakeList(ArrayList<Cake> c1) {
		this.cakeList = c1;
	}

}
