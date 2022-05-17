package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exceptions.InvalidOrderId;
import com.exceptions.InvalidPassword;
import com.model.Cake;
import com.model.Customer;
import com.model.Lists;
import com.model.Logindetails;

@Controller
public class AdminController {

	private static final String ERR_MSG = "ErrMsg";
	private static final String ADMIN_HOME = "adminHome";
	Customer customer = new Customer();
	Lists lists = new Lists();
	Cake cake = new Cake();

	Cake cake1 = new Cake("101", "Black-Forest (1/2 Kg)", 400);
	Cake cake2 = new Cake("102", "Pineapple (1/2 Kg)", 450);
	Cake cake3 = new Cake("103", "Red Velvet (1 Kg)", 900);

	Logindetails user1 = new Logindetails("sahil", "sahil123", "9849358579");
	Logindetails user2 = new Logindetails("ashish", "ashish123", "9652145236");
	Logindetails user3 = new Logindetails("udya", "uday123", "9652365412");

	// contains username and password
	Logindetails logindetails = new Logindetails();

	// First page after running project
	@RequestMapping(value = "/")
	public String first(Model model) {
		model.addAttribute("logindetails", logindetails);

		return "index";
	}

	int loadCakeListData = 0; // to stop overwriting the list and also add new product in the list

	static String userName = ""; // username to view in orders
//	static String errorMsg="";

	// redirect to the home pages as per login credentials
	@RequestMapping(value = "/login")
	public String displayLogin(@ModelAttribute("logindetails") Logindetails logindetails, Model model) {
		try {

			model.addAttribute("logindetails", logindetails);
			if (loadCakeListData == 0) {
				lists.getCakeList().add(cake1);
				lists.getCakeList().add(cake2);
				lists.getCakeList().add(cake3);

				Lists.getUserLoginList().add(user1);
				Lists.getUserLoginList().add(user2);
				Lists.getUserLoginList().add(user3);
				loadCakeListData++;
			}
			if (logindetails.getName().equals("admin") && logindetails.getPassword().equals("admin123")) {

				return ADMIN_HOME;
			}
			for (Logindetails list : Lists.getUserLoginList()) {
				if (logindetails.getName().equals(list.getName())
						&& logindetails.getPassword().equals(list.getPassword())) {
					userName = logindetails.getName();
					System.out.println(lists.getCakeList());
					model.addAttribute("username", userName);
					return "UserHome";
				}
			}
			throw new InvalidPassword("Invalid Credintials");
		} catch (InvalidPassword e) {
			model.addAttribute("errorMsg", e.getMessage());
		}

		return "index";
	}

	@PostMapping(value = "/actions", params = "orderList")
	public String displayOrders(Model model) {
		model.addAttribute("orderList", lists.getOrderList());
		if (lists.getOrderList().isEmpty()) {
			return "noRecordsFound";
		}
		return "orderList";
	}

	@PostMapping(value = "/actions", params = "userList")
	public String displayusers(Model model) {
		model.addAttribute("userList", Lists.getUserLoginList());
		if (Lists.getUserLoginList().isEmpty()) {
			return "noRecordsFound";
		}
		return "userList";
	}

	@PostMapping(value = "/actions", params = "searchOrder")
	public String searchCakeInput(Model model, @ModelAttribute("customer") Customer customer) {
		model.addAttribute("customer", customer);
		return "searchOrderInput";
	}

	@PostMapping(value = "/managecakes", params = "searchOrdersubmit")
	public String searchCakeSuccess(@ModelAttribute("customers") Customer customer, Model model) {
		try {

			model.addAttribute("customers", customer);
			for (Customer customers : lists.getOrderList()) {
				if (customers.getOrderId() == customer.getOrderId()) {
					System.out.println(customers.getOrderId() + customers.getOrderName());
					model.addAttribute("id", customers.getOrderId());
					model.addAttribute("name", customers.getOrderName());
					model.addAttribute("quantity", customers.getQuantity());
					model.addAttribute("price", customers.getPrice());
					return "SearchOrderDisplay";
				}
			}
	
			throw new InvalidOrderId("Invalid Order Id");
		} catch (Exception e) {
			model.addAttribute(ERR_MSG, e.getMessage());
			model.addAttribute("customer", customer);
		}
		return "searchOrderInput";
	}

	// to return to the login page
	@PostMapping(value = "/actions", params = "logout")
	public String displayLogout(Model model) {
		model.addAttribute("logindetails", logindetails);
		return "index";
	}


//	 @PostMapping(value = "/managecakes", params = "logout") public String
//	 manageCakesLogout(Model model) { model.addAttribute("logindetails",
//	 logindetails); return "index"; }
	

	// to return adminhome page after clicking on back button inside managecakes
	@PostMapping(value = "/actions", params = "back")
	public String displayAdminHome(Model model) {
		return ADMIN_HOME;
	}

	// to return managecakes page
	@PostMapping(value = "/actions", params = "backtomanagecakes")
	public String backToManageCakes(Model model) {
		return ADMIN_HOME;
	}

	@PostMapping(value = "/actions", params = "managecakes")
	public String displayManageCakes(Model model) {
		return "ManageCakes";
	}

	@PostMapping(value = "/managecakes", params = "newcake")
	public String addNewCake(Model model) {
		model.addAttribute("cake", cake);
		return "AddCakeInput";
	}

	@PostMapping(value = "/managecakes", params = "newcakesubmit")
	public String addCakeSuccess(@ModelAttribute("cake") Cake cake, Model model) {
		System.out.println(cake.cakeName + "  " + cake.cakePrice);
		lists.getCakeList().add(cake);
		return "AddCakeSuccess";
	}

	@PostMapping(value = "/managecakes", params = "viewcakes")
	public String viewCakes(Model model) {
		model.addAttribute("cakeList", lists.getCakeList());
		if (lists.getCakeList().isEmpty()) {
			return "noRecordsFound";
		}
		return "ViewCakes";
	}

	@PostMapping(value = "/managecakes", params = "deletecake")
	public String deleteCakeInput(Model model) {
		model.addAttribute("cake", cake);
		return "DeleteCakeInput";
	}

	@PostMapping(value = "/managecakes", params = "deletecakesubmit")
	public String deleteCakeSuccess(@ModelAttribute("cake") Cake cake, Model model) {
		try {
		for (Cake cake2 : lists.getCakeList()) {
			if (cake2.cakeId.equals(cake.cakeId)) {
				lists.getCakeList().remove(cake2);
				return "DeleteCakeSuccess";
			}
		}
		throw new InvalidOrderId("Invalid Cake ID");
		} catch (Exception e) {
			model.addAttribute("cake", cake);
			model.addAttribute(ERR_MSG, e.getMessage());
		}
		return "DeleteCakeInput";
	}

	@PostMapping(value = "/managecakes", params = "updatecake")
	public String updateCakeInputId(Model model) {
		model.addAttribute("cake", cake);//Id
		return "UpdateCakeInput";
	}
	
	String cakeid="";
	@PostMapping(value = "/managecakes", params = "updatecakeinput")
	public String updateCakeInputData(@ModelAttribute("cake") Cake cake, Model model) {
		try {
		for (Cake cake2 : lists.getCakeList()) {
			if (cake2.cakeId.equals(cake.cakeId)) {
				model.addAttribute("id", cake.getCakeId());
				model.addAttribute("name", cake2.getCakeName());
				model.addAttribute("price", cake2.getCakePrice());
				cakeid=cake.getCakeId();
				model.addAttribute("cake", cake);//name price
				return "UpdateCakeInputData";
			}
		}
		throw new InvalidOrderId("Invalid Cake ID");
		} catch (Exception e) {
			model.addAttribute("cake", cake);
			model.addAttribute(ERR_MSG, e.getMessage());
		}
		return "UpdateCakeInput";
	}

	@PostMapping(value = "/managecakes", params = "updatecakesubmit")
	public String updateCakeSuccess(@ModelAttribute("cake") Cake cake, Model model) {
		for (Cake cake2 : lists.getCakeList()) {
			if (cake2.cakeId.equals(cakeid)) {
				cake2.setCakeName(cake.cakeName);
				cake2.setCakePrice(cake.cakePrice);
				return "UpdateCakeSuccess";
			}
		}
		return "Invalidcake";
	}

}
