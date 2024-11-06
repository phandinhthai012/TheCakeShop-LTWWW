package com.iuh.spring.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.stereotype.Controller
@org.springframework.web.bind.annotation.RequestMapping("/user")
public class UserController {
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
}
