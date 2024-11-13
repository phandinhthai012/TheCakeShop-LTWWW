package com.iuh.spring.controller;

import java.util.Date;
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
import com.iuh.spring.entity.Order;
import com.iuh.spring.entity.OrderDetail;
import com.iuh.spring.entity.Product;
import com.iuh.spring.entity.User;
import com.iuh.spring.service.OrderDetailService;
import com.iuh.spring.service.OrderService;
import com.iuh.spring.service.ProductService;
import com.iuh.spring.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private UserService userService;
	
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
		@SuppressWarnings("unchecked")
		List<ItemCart> listCart = (List<ItemCart>) session.getAttribute("cart");
		double totalCart = 0;
		if (listCart != null) {
			for (ItemCart itemCart : listCart) {
				totalCart += itemCart.getPrice();
			}
		}
		model.addAttribute("totalCart", totalCart);
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
		if (listCart == null) {
			return "redirect:/order/showOrder";
		}
		int index = checkExist(productId, listCart);
		if (index == -1) {
			return "redirect:/order/showOrder";
		}
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
	
	
	@GetMapping("/RemoveAll")
	public String removeAllProductFromCart(Model model, HttpSession session) {
		session.removeAttribute("cart");
		return "cart/cart";
	}
	@GetMapping("/continueShopping")
	public String continueShopping(Model model, HttpSession session) {
		return "redirect:/product/productList";
	}
	
	@GetMapping("/checkout")
	public String showCheckout(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		
		if (user == null) {
			return "redirect:/user/Slogin";
		}
		user = userService.getUserById(user.getUserId());
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Checkout");
		List<ItemCart> listCart = (List<ItemCart>) session.getAttribute("cart");
		session.setAttribute("user", user);
		if (listCart == null) {
			return "redirect:/order/showOrderDetail";
		}
		double totalCart = 0;
		for (ItemCart itemCart : listCart) {
			totalCart += itemCart.getPrice();
		}
		Product product = checkQuantity(listCart);
		if (product != null) {
            model.addAttribute("message", "Sản phẩm " + product.getProductName() + " không đủ số lượng");
            model.addAttribute("pageTitle", "Order");
            return "cart/cart";
        }
		model.addAttribute("totalCart", totalCart);
		return "cart/checkout";
	}
	
	@GetMapping("/toOrder")
	public String toOrder(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/user/Slogin";
		}
		session.setAttribute("user", user);
		List<ItemCart> listCart = (List<ItemCart>) session.getAttribute("cart");
		double totalCart = 0;
		for (ItemCart itemCart : listCart) {
			totalCart += itemCart.getPrice();
		}
		// create order
		Date date = new Date();
		Order order = new Order(user, totalCart, "Chờ xác nhận", date);
		boolean result = orderService.createOrder(order);
		if (result) {
			for (ItemCart itemCart : listCart) {
				OrderDetail orderDetail = new OrderDetail(order, itemCart.getProduct(), itemCart.getQuantity(),
                        itemCart.getProduct().getPrice());
				int newQuantity = itemCart.getProduct().getStockQuantity() - itemCart.getQuantity();
				productService.updateProductQuantity(itemCart.getProduct().getProductId(), newQuantity);
				orderDetailService.insertOrderDetailByOrderId(orderDetail, order.getOrderId());
			}
		}
		session.removeAttribute("cart");
		return "redirect:/user/accountOrderHistory";
	}
	//kiem tra so luong san pham con trong kho
	private Product checkQuantity(List<ItemCart> listCart) {
		for (ItemCart itemCart : listCart) {
			Product product = productService.getProductById(itemCart.getProduct().getProductId());
			if (product.getStockQuantity() < itemCart.getQuantity()) {
				return product;
			}
		}
		return null;
	}
	
}
