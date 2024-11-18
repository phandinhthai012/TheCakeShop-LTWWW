package com.iuh.spring.controller.admin;

import java.util.Date;
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
import com.iuh.spring.entity.User;
import com.iuh.spring.service.CategoryService;
import com.iuh.spring.service.OrderDetailService;
import com.iuh.spring.service.OrderService;
import com.iuh.spring.service.ProductService;
import com.iuh.spring.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

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
	@Autowired
	private UserService userService;

	@RequestMapping("/revenue")
	public String showDashboard(Model model) {
		double totalRevenue = orderService.getTotolOrderPrice();
		model.addAttribute("totalRevenue", totalRevenue);
		List<Order> listOrder = orderService.getAllOrder();
		model.addAttribute("totalOrder", listOrder.size());
		model.addAttribute("listOrder", listOrder);
//		int orderCXN = orderService.countOrderByStatus("Chờ xác nhận");
//		System.out.println("orderCXN: " + orderCXN);
//		int orderXN = orderService.countOrderByStatus("Xác nhận");
//		System.out.println("orderXN: " + orderXN);
//		int orderGH = orderService.countOrderByStatus("Đang giao");
//		System.out.println("orderGH: " + orderGH);
//		int totalOrder = orderCXN + orderXN + orderGH;
//		model.addAttribute("orderNoSuccess", totalOrder);
		Date date = new Date();
		int month = date.getMonth() + 1;
		String monthString = String.valueOf(month);
		List<Order> orderMonth = orderService.getOrderByMonthAndStatus(monthString, "Đã hủy");
		double totalRevenueMonth = 0;
		for (Order order : orderMonth) {
			totalRevenueMonth += order.getTotalOrder();
		}
		model.addAttribute("totalRevenueMonth", totalRevenueMonth);
		int numberCustomer = userService.getAllUser().size(); // số lượng khách hàng
		System.out.println("numberCustomer: " + numberCustomer);
		model.addAttribute("numberCustomer", numberCustomer);
		return "admin/revenue";
	}

	@RequestMapping("/product")
	public String showProduct(Model model) {
		List<Product> list = productService.getAllProducts();
		model.addAttribute("listProduct", list);
		return "admin/mproduct";
	}

	@RequestMapping("/category")
	public String showCategory(Model model) {
		List<Category> categories = categoryService.getAllCategory();
		model.addAttribute("listCategory", categories);
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
		System.out.println("id: " + id);
		System.out.println("status: " + status);
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
	public String viewAddProduct(Model model) {
		List<Category> list = categoryService.getAllCategory();
		model.addAttribute("listCategory", list);
		return "admin/viewproduct/addProduct";
	}

	@PostMapping("/addNewProduct")
	public String addNewProduct(@RequestParam("productName") String productName, @RequestParam("price") double price,
			@RequestParam("description") String description, @RequestParam("category") long categoryId,
			@RequestParam("size") int size, @RequestParam("quantity") int quantity,
			@RequestParam("image") String image) {
		Category category = categoryService.getCategoryById(categoryId);
		Product product = new Product(productName, description, price, image, quantity, size, category);
		System.out.println(product);
		productService.addProduct(product);
		return "redirect:/admin/product";
	}

	@PostMapping("updateProduct")
	public String updateProduct(HttpServletRequest request, Model model) {
		long productId = Long.parseLong(request.getParameter("prodcutId"));
		String productNameNew = request.getParameter("productName");
		int quantityNew = Integer.parseInt(request.getParameter("quantity"));
		double priceNew = Double.parseDouble(request.getParameter("price"));
		String descriptionNew = request.getParameter("description");
		long categoryIdNew = Long.parseLong(request.getParameter("category"));
		String imageNew = request.getParameter("image");
		Product product = productService.getProductById(productId);
		product.setProductName(productNameNew);
		product.setStockQuantity(quantityNew);
		product.setPrice(priceNew);
		product.setDescription(descriptionNew);
		product.setCategory(categoryService.getCategoryById(categoryIdNew));
		product.setImage(imageNew);
		productService.updateProduct(product);
		return "redirect:/admin/product";
	}

	@GetMapping("/viewAddCategory")
	public String viewAddCategory(Model model) {
		return "admin/category/addCategory";
	}

	@GetMapping("/viewEditCategory")
	public String viewEditCategory(Model model, @RequestParam("categoryId") String categoryId) {
		if (categoryId != null) {
			long id = Long.parseLong(categoryId);
			Category category = categoryService.getCategoryById(id);
			model.addAttribute("category", category);
		} else {
			model.addAttribute("category", categoryService.getCategoryById(1));
		}
		return "admin/category/editCategory";
	}
	@PostMapping("/addNewCategory")
	public String addNewCategory(@RequestParam("categoryName") String categoryName, @RequestParam("description") String description,@RequestParam("img") String img) {
		Category category = new Category(categoryName, description);
		category.setImg(img);
		categoryService.insertCategory(category);
		return "redirect:/admin/category";
	}
	@PostMapping("/aditCategory")
	public String aditCategory(@RequestParam("categoryName") String categoryName, @RequestParam("description") String description,@RequestParam("categoryId") long categoryId) {
		Category category = categoryService.getCategoryById(categoryId);
		category.setCategoryName(categoryName);
		category.setDescription(description);
		categoryService.updateCategory(category);
		return "redirect:/admin/category";
	}
	
	@GetMapping("/ShowUsers")
	public String showUsers(Model model) {
		model.addAttribute("listUser", userService.getAllUser());
		return "admin/muser";
	}
	@GetMapping("/formAddUser")
	public String showFormAddUsers(Model model) {
		return "admin/user/adduser";
	}
	@GetMapping("/removeUser")
	public String removeUser(@RequestParam("userId") String userId) {
		long id = Long.parseLong(userId);
		System.out.println("id: " + id);
		User user = userService.getUserById(id);
		System.out.println("user: " + user);
		userService.deleteUser(id);
		return "redirect:/admin/ShowUsers";
	}
	@PostMapping("/addUser")
	public String addUser(@RequestParam("email") String email, @RequestParam("pass") String password,
			@RequestParam("fname") String fname, @RequestParam("lname") String lname,
			@RequestParam("role") String role, @RequestParam("phone") String phone) {
		User user = new User(fname, lname, password, email, phone, role);
		userService.insertUser(user);
		return "redirect:/admin/ShowUsers";
	}
}
