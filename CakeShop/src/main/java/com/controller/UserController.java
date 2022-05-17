package com.controller;


import java.util.ArrayList;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exceptions.InvalidOrderId;
import com.model.Cake;
import com.model.Customer;
import com.model.Lists;
import com.model.Logindetails;
@Controller
public class UserController {
	Customer customer = new Customer();
	Lists lists = new Lists();
	Logindetails logindetails = new Logindetails();
	
	
	@PostMapping(value = "/userhome", params = "buycake")
	public String buyCake(Model model) {		
		model.addAttribute("customer" , customer);  //ordername and quantity ahe
		model.addAttribute("cakeList" , lists.getCakeList());
		return "BuyCakeInput";
	}
	
	int orderID=101;
	@PostMapping(value = "/buysuccess")
	public String addCakeSuccess(@ModelAttribute("customer") Customer customer,Model model) {
		for (Cake list : lists.getCakeList()) {  //maching with list obj to get price of same cakename
			if (list.getCakeName().equals(customer.getOrderName())) {
				customer.setOrderId(orderID);
				customer.setPrice(customer.getQuantity()*list.getCakePrice());
				customer.setUserName(AdminController.userName);//need to be entered
				orderID++;
				lists.getOrderList().add(customer);
			}
			
		}
		return "BuyCakeSuccess"; 	
		}
	
	@RequestMapping(value = "/registration")
	public String registration(Model model) {	
		model.addAttribute("logindetails" , logindetails); 
		return "Registration";
	}
	
	@RequestMapping(value = "/registrationSuccess")
	public String registrationSuccess(@ModelAttribute("logindetails") Logindetails logindetails,Model model) {	
		Lists.userLoginList.add(logindetails);//continue with new user registration
		return "RegistrationSuccess";//not created yet
	}
	
	@RequestMapping(value = "/backToUserHome")
	public String backToUserHome(Model model) {
		model.addAttribute("username" , AdminController.userName); 
		return "UserHome";
	}
	
	@RequestMapping(value = "userhome" , params="userorderhistory")
	public String orderHistory(Model model) {
		ArrayList<Customer> OrderHistoryList = new ArrayList<>();
		for (Customer customer : lists.getOrderList()) {
			if (customer.getUserName().equals(AdminController.userName)) {
				OrderHistoryList.add(customer);
			}
		}
		model.addAttribute("orderHistory" , OrderHistoryList);
		if (OrderHistoryList.isEmpty()) {
			return "NoOrderHistory";
		}
		return "userHistory";
	}
	
	@RequestMapping(value = "/userhome" , params="deleteorder")
	public String deleteOrderInput(Model model) {
		model.addAttribute("customer" , customer); 
		return "DeleteOrderInput";
	}
	
	@RequestMapping(value = "/deleteordersubmit")
	public String deleteOrderSuccess(@ModelAttribute("customer") Customer customer,Model model) {	
		try {
		for (Customer order : lists.getOrderList()) {
			if (customer.getOrderId()==order.getOrderId()) {
				lists.getOrderList().remove(order);
				return "DeleteOrderSuccess";
			}
		}
		throw new InvalidOrderId("Invalid Order ID");
		} catch (InvalidOrderId e) {
			model.addAttribute("errorMsg", e.getMessage());
		}
		model.addAttribute("customer" , customer); 
		return "DeleteOrderInput";
	}
}
