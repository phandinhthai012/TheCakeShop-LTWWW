package com.iuh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iuh.spring.entity.User;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/order")
public class OrderController {
	@GetMapping("/showOrder")
	public String showAccountOrder(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			 return "redirect:/user/Slogin";
		}
		model.addAttribute("pageTitle", "Order");
		return "cart/cart";
	}
}
