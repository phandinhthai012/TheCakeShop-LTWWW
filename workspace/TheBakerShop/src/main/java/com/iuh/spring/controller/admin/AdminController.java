package com.iuh.spring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/revenue")
	public String showDashboard() {
		return "admin/revenue";
	}
	
	
}
