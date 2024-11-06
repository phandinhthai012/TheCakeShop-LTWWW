package com.iuh.spring.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.User;
import com.iuh.spring.service.UserService;

import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
@org.springframework.web.bind.annotation.RequestMapping("/user")
public class UserController {
	@org.springframework.beans.factory.annotation.Autowired
	private UserService userService;

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
