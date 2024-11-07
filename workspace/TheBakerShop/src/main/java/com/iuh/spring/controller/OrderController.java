package com.iuh.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.ItemCart;
import com.iuh.spring.entity.Product;
import com.iuh.spring.entity.User;
import com.iuh.spring.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/showOrder")
	public String showAccountOrder(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			 return "redirect:/user/Slogin";
		}
		model.addAttribute("pageTitle", "Order");
		return "cart/cart";
	}
	@GetMapping("/showOrderDetail")
	public String showOrderDetail(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/user/Slogin";
		}
		model.addAttribute("pageTitle", "Order Detail");
		return "cart/cart";
	}
	@PostMapping("/addToCart")
	public String addProductToCart(Model model, HttpSession session,HttpServletRequest request,
			@RequestParam("productId") Long productId, @RequestParam("quantity") int quantity) {
		model.addAttribute("pageTitle", "Order");
		User user = (User) session.getAttribute("user");
		session.setAttribute("user", user);
		if (user == null) {
			return "redirect:/user/Slogin";
		}
		int q2 = request.getParameter("quantity") != null ? Integer.parseInt(request.getParameter("quantity")) : 1;
		System.out.println("q2: " + q2);
		System.out.println("productId: " + productId);
		System.out.println("quantity: " + quantity);
		
		List<ItemCart> listCart;
		if (session.getAttribute("cart") == null) {
			listCart = new ArrayList<ItemCart>();
		} else {
			listCart = (List<ItemCart>) session.getAttribute("cart");
		}
		Product product = productService.getProductById(productId);
		int index = checkExist(productId, listCart);
		if (index == -1) {
			double total = (double)product.getPrice() * quantity;
			ItemCart itemCart = new ItemCart(product, quantity, total);
			listCart.add(itemCart);
		} else {
			int q = listCart.get(index).getQuantity() + q2;
			double total = (double)product.getPrice() * q;
			listCart.get(index).setQuantity(q);
			listCart.get(index).setPrice(total);
		}
		double totalCart = 0;
		for (ItemCart itemCart : listCart) {
			totalCart += itemCart.getPrice();
		}
		model.addAttribute("totalCart", totalCart);
		session.setAttribute("cart", listCart);
		return "cart/cart";
	}
	
	@GetMapping("/removeProduct")
	public String removeProductFromCart(Model model, HttpSession session, @RequestParam("productId") Long productId) {
		List<ItemCart> listCart = (List<ItemCart>) session.getAttribute("cart");
		int index = checkExist(productId, listCart);
		listCart.remove(index);
		session.setAttribute("cart", listCart);
		return "cart/cart";
	}
	
	// hàm check id sản phẩm đã có trong giỏ hàng chưa
	private int checkExist(Long id, List<ItemCart> list) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getProduct().getProductId() == id) {
				return i;
			}
		}
		return -1;
	}
}
