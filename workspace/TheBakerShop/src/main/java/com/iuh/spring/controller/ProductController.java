package com.iuh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Product;
import com.iuh.spring.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

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
			@RequestParam(name = "page", required = false, defaultValue = "1") int page) {
		model.addAttribute("pageTitle", "Product List");
		int pumProduct = productService.countAllProduct();
		int productsPerPage = 9;
		int totalPages = (int) Math.ceil((double) pumProduct / productsPerPage);
		model.addAttribute("totalPages", totalPages);
		List<Product> list = productService.getProductsByCategory(0, page, productsPerPage);
		model.addAttribute("products", list);
		model.addAttribute("currentPage", page);
//		model.addAttribute("products", productService.getAllProducts());
		return "product/listproduct";
	}
}
