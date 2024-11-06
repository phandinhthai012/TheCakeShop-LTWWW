package com.iuh.spring.service;

import java.util.List;

import com.iuh.spring.entity.Product;

public interface ProductService {
	public List<Product> getAllProducts();

	// 5> List product show in footer => random sp
	public List<Product> getFeaturedProducts();

	public Product getProductById(long id);
	// get 4 product by category
	public List<Product> getProductsByCategory(long categoryId);
	
	// lấy sản phẩm theo danh mục và phân trang
		public List<Product> getProductsByCategory(long categoryId, int pageNo, int pageSize);
		
		public int countAllProduct();
}
