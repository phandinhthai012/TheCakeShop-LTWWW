package com.iuh.spring.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Order;
import com.iuh.spring.entity.OrderDetail;
import com.iuh.spring.service.OrderDetailService;
import com.iuh.spring.service.OrderService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderDetailService orderDetailService;

	@RequestMapping("/revenue")
	public String showDashboard() {
		return "admin/revenue";
	}

	@RequestMapping("/product")
	public String showProduct() {
		return "admin/mproduct";
	}

	@RequestMapping("/category")
	public String showCategory() {
		return "admin/category";
	}

	@RequestMapping("/invoice")
	public String showOrder(Model model) {
		List<Order> list = orderService.getAllOrder();
		model.addAttribute("listOrder", list);
		return "admin/invoice";
	}

	@GetMapping("/viewInvoice")
	public String viewInvoice(@RequestParam("invoiceId") String invoiceId, Model model) {
		long id = Long.parseLong(invoiceId);
		List<OrderDetail> list = orderDetailService.getOrderDetailByOrderId(id);
		model.addAttribute("listOrderDetail", list);
		Order order = orderService.getOrderById(id);
		model.addAttribute("order", order);
		return "admin/viewOderDetail";
	}
	@GetMapping("/editStatus")
	public String viewEditStatus(Model model) {
//		long id = Long.parseLong(invoiceId);
//		List<OrderDetail> list = orderDetailService.getOrderDetailByOrderId(id);
//		model.addAttribute("listOrderDetail", list);
//		Order order = orderService.getOrderById(id);
//		model.addAttribute("order", order);
		return "admin/viewupdatestatus";
	}
	

}
