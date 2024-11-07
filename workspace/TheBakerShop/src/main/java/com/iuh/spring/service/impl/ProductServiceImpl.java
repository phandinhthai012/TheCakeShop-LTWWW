package com.iuh.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.ProductDAO;
import com.iuh.spring.entity.Product;
import com.iuh.spring.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public List<Product> getAllProducts() {
		return productDAO.getAllProducts();
	}

	@Override
	@Transactional
	public List<Product> getFeaturedProducts() {
		return productDAO.getFeaturedProducts();
	}

	@Override
	@Transactional
	public Product getProductById(long id) {
		
		return productDAO.getProductById(id);
	}

	@Override
	@Transactional
	public List<Product> getProductsByCategory(long categoryId) {
		return productDAO.getProductsByCategory(categoryId);
	}

	@Override
	@Transactional
	public List<Product> getProductsByCategory(long categoryId, int pageNo, int pageSize) {
		
		return productDAO.getProductsByCategory(categoryId, pageNo, pageSize);
	}

	@Override
	@Transactional
	public int countAllProduct() {
		// TODO Auto-generated method stub
		return productDAO.countAllProduct();
	}

	@Override
	@Transactional
	public List<Product> getProducts(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return productDAO.getProducts(pageNo, pageSize);
	}

	@Override
	@Transactional
	public int countProductByCategory(long categoryId) {
		return productDAO.countProductByCategory(categoryId);
	}

	@Override
	public List<Product> getProductsByPriceRanges(List<Integer> priceRanges) {
		// TODO Auto-generated method stub
		return productDAO.getProductsByPriceRanges(priceRanges);
	}

	@Override
	@Transactional
	public List<Product> getProductsByPriceRangesAndName(List<Integer> priceRanges, String text) {
		// TODO Auto-generated method stub
		return productDAO.getProductsByPriceRangesAndName(priceRanges, text);
	}
}
