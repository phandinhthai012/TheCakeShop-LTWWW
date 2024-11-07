package com.iuh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Address;
import com.iuh.spring.entity.Order;
import com.iuh.spring.entity.User;
import com.iuh.spring.service.AddressService;
import com.iuh.spring.service.OrderService;
import com.iuh.spring.service.UserService;

import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
@org.springframework.web.bind.annotation.RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private AddressService addressService;

	@GetMapping("/Slogin")
	public String showLogin(Model model, HttpSession session) {
		model.addAttribute("pageTitle", "Login");
		return "login/login";
	}

	@PostMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, Model model) {
		User user = userService.getUserByEmailAndPassWord(username, password);
		if (user != null) {
			session.setAttribute("user", user);
			model.addAttribute("message", "Login successfully.");
			model.addAttribute("pageTitle", "account");
			return "redirect:/";
		} else {
			model.addAttribute("message", "Login failed. Please check your username and password.");
			return "login/login";
		}
	}
	
	@GetMapping("/account")
    public String showAccount(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            model.addAttribute("pageTitle", "Account");
            session.setAttribute("user", user);
            return "/account/account";
        } else {
            return "redirect:/user/Slogin";
        }
    }
	
	@GetMapping("/accountOrderHistory")
	public String showAccountOrderHistory(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		List<Order> orders = orderService.getAllOrderByUserId(user.getUserId());
		model.addAttribute("orders", orders);
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Account");
		return "account/account_order";
	}
	
	@GetMapping("/accountAddress")
	public String showAccountAddress(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		Address address = addressService.getAddressByUserId(user.getUserId());
		model.addAttribute("address", address);
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Account");
		return "account/account_address";
	}

	@GetMapping("/accountDetail")
	public String showAccountDetail(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Account");
		return "account/account_detail";
	}

	
	@GetMapping("/register")
	public String showRegister(Model model) {
		model.addAttribute("pageTitle", "Resgiter");
		return "login/register";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("cart");
		return "redirect:/";
	}
}
