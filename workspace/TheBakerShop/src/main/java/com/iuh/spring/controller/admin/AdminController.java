package com.iuh.spring.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Category;
import com.iuh.spring.entity.Order;
import com.iuh.spring.entity.OrderDetail;
import com.iuh.spring.entity.Product;
import com.iuh.spring.service.CategoryService;
import com.iuh.spring.service.OrderDetailService;
import com.iuh.spring.service.OrderService;
import com.iuh.spring.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/revenue")
	public String showDashboard() {
		return "admin/revenue";
	}

	@RequestMapping("/product")
	public String showProduct(Model model) {
		List<Product> list = productService.getAllProducts();
		model.addAttribute("listProduct", list);
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
	public String viewInvoice(@RequestParam("orderId") String orderId, Model model) {
		long id = Long.parseLong(orderId);
		List<OrderDetail> list = orderDetailService.getOrderDetailByOrderId(id);
		model.addAttribute("listOrderDetail", list);
		Order order = orderService.getOrderById(id);
		model.addAttribute("order", order);
		return "admin/viewOderDetail";
	}
	@GetMapping("/editStatus")
	public String viewEditStatus(@RequestParam("orderId") String invoiceId, Model model) {
		long id = Long.parseLong(invoiceId);
		Order order = orderService.getOrderById(id);
		model.addAttribute("order", order);
		return "admin/viewupdatestatus";
	}
	@PostMapping("/updateStatusOrder")
	public String updateStatusOrder(@RequestParam("orderId") String orderId, @RequestParam("status") String status) {
		long id = Long.parseLong(orderId);
		Order order = orderService.getOrderById(id);
		System.out.println("id: "+id);
		System.out.println("status: "+status);
		order.setStatus(status);
		orderService.updateOrder(order);
		return "redirect:/admin/invoice";
	}
	
	@GetMapping("/viewProductDetail")
	public String viewProductDetail(@RequestParam("productId") String productId, Model model) {
		long id = Long.parseLong(productId);
		Product product = productService.getProductById(id);
		List<Category> list = categoryService.getAllCategory();
		model.addAttribute("listCategory", list);
		model.addAttribute("product", product);
		return "admin/viewproduct/editProduct";
	}
	@GetMapping("/viewAddProduct")
	public String viewAddProduct( Model model) {
		
		return "admin/viewproduct/addProduct";
	}

}
