package com.iuh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	@GetMapping("/accountorder")
	public String showAccountOrder(Model model) {
		model.addAttribute("pageTitle", "Order");
		return "cart/cart";
	}
}
