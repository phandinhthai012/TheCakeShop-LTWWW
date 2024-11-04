package com.iuh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.iuh.spring.service.CategoryService;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("/")
	public String showHome(Model model) {
		model.addAttribute("categories", categoryService.getAllCategory());
		return "home";
	}
	@GetMapping("/login")
	public String showLogi(Model model) {
		model.addAttribute("pageTitle", "Login");
		return "login/login";
	}
	
	@GetMapping("/account")
	public String showAccount(Model model) {
		model.addAttribute("pageTitle", "Account");
		return "account/account";
	}
	@GetMapping("/accountaddress")
	public String showAccountAddress(Model model) {
		model.addAttribute("pageTitle", "Account");
		return "account/account_address";
	}
	@GetMapping("/accountdetail")
	public String showAccountDetail(Model model) {
		model.addAttribute("pageTitle", "Account");
		return "account/account_detail";
	}
	@GetMapping("/accountorder2")
	public String showOrderHitory(Model model) {
		model.addAttribute("pageTitle", "Account");
		return "account/account_order";
	}
	@GetMapping("/accountorder")
	public String showAccountOrder(Model model) {
		model.addAttribute("pageTitle", "Order");
		return "cart/cart";
	}
	@GetMapping("/contact")
	public String showAccountWishlist(Model model) {
		model.addAttribute("pageTitle", "Contact");
		return "contact/contact";
	}
	
}
