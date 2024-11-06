package com.iuh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iuh.spring.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/productDetail/{id}")
	public String showProductDetail(@PathVariable("id") Long id,Model model) {
		model.addAttribute("pageTitle", "Product Detail");
		model.addAttribute("product", productService.getProductById(id));
		return "product/product_detail";
	}
	
	@GetMapping("/productList")
	public String showProductList(Model model) {
		model.addAttribute("pageTitle", "Product List");
		model.addAttribute("products", productService.getAllProducts());
		return "product/listproduct";
	}
}
