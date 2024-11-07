package com.iuh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Category;
import com.iuh.spring.entity.Product;
import com.iuh.spring.service.CategoryService;
import com.iuh.spring.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@GetMapping("/productDetail/{id}")
	public String showProductDetail(@PathVariable("id") Long id, Model model,
			@RequestParam("categoryId") Long categoryId) {
		model.addAttribute("pageTitle", "Product Detail");
		model.addAttribute("product", productService.getProductById(id));
		java.util.List<Product> productRe = productService.getProductsByCategory(categoryId);
		model.addAttribute("productRe", productRe);
		return "product/product_detail";
	}

	@GetMapping("/productList")
	public String showProductList(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page, HttpSession session) {
		model.addAttribute("pageTitle", "Product List");

//		if(session.getAttribute("categoryId") != null) {
//			if ((Long) session.getAttribute("categoryId") == 0) {
//				return showProductList(model, page, session);
//			}
//			return showProductListByCategory((Long) session.getAttribute("categoryId"), model, page, session);
//		}
		session.removeAttribute("categoryId");
		int pumProduct = productService.countAllProduct();
		int productsPerPage = 9;
		int totalPages = (int) Math.ceil((double) pumProduct / productsPerPage);
		model.addAttribute("totalPages", totalPages);
		List<Product> list = productService.getProducts(page, productsPerPage);
		model.addAttribute("products", list);
		model.addAttribute("currentPage", page);

		List<Category> categories = categoryService.getAllCategory();
		model.addAttribute("categories", categories);
//		model.addAttribute("products", productService.getAllProducts());

		return "product/listproduct";
	}

	@GetMapping("/productList/category/{categoryId}")
	public String showProductListByCategory(@PathVariable("categoryId") Long categoryId, Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page, HttpSession session) {
		if (categoryId == 0) {
//			 session.setAttribute("categoryId", categoryId);
			session.removeAttribute("categoryId");
			return showProductList(model, page, session);
		}
		model.addAttribute("pageTitle", "Product List");
		session.setAttribute("categoryId", categoryId);
		int pumProductByCategory = productService.countProductByCategory(categoryId);
		int productsPerPage = 9;
		int totalPages = (int) Math.ceil((double) pumProductByCategory / productsPerPage);
		model.addAttribute("totalPages", totalPages);
		List<Product> list = productService.getProductsByCategory(categoryId, page, productsPerPage);
		model.addAttribute("products", list);
		model.addAttribute("currentPage", page);

		List<Category> categories = categoryService.getAllCategory();
		model.addAttribute("categories", categories);
		return "product/listproduct";
	}

	@PostMapping("/filter")
	public String filterProducts(@RequestParam(name = "price", required = false) List<Integer> price, Model model,
			HttpSession session, @RequestParam(name = "search", required = false, defaultValue = "") String search) {
		model.addAttribute("pageTitle", "Product List");
		model.addAttribute("selectedPrices", price);
		model.addAttribute("search", search);
		if ((price == null || price.size() == 0) && (search.isEmpty() || search.isBlank())) {
			session.removeAttribute("price");
			return showProductList(model, 1, session);
		}
		System.out.println(search);
		System.out.println(price);
//		List<Product> list = productService.getProductsByPriceRanges(price);
		List<Product> list = productService.getProductsByPriceRangesAndName(price, search);
		model.addAttribute("products", list);

		List<Category> categories = categoryService.getAllCategory();
		model.addAttribute("categories", categories);
		// Add other necessary attributes to the model
		return "product/listproduct";
	}
}
