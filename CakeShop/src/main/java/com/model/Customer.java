package com.model;

import java.util.ArrayList;
import java.util.List;

public class Customer {

	private int OrderId;
	private String OrderName;
	private String userName;
	private int quantity;
	private int price;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	private static List<Customer> orderList = new ArrayList<>();

	public static List<Customer> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Customer> orderList) {
		this.orderList = orderList;
	}

	public int getOrderId() {
		return OrderId;
	}

	public Customer(int OrderId, String orderName, String userName, int quantity, int price) {
		super();
		this.OrderId = OrderId;
		this.OrderName = orderName;
		this.userName = userName;
		this.quantity = quantity;
		this.price = price;
	}

	public void setOrderId(int OrderId) {
		this.OrderId = OrderId;
	}

	public String getOrderName() {
		return OrderName;
	}

	public void setOrderName(String orderName) {
		this.OrderName = orderName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


	

}
