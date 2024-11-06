package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.Product;

public interface ProductDAO {
	public List<Product> getAllProducts();
	
	// 5> List product show in footer => random sp
	public List<Product> getFeaturedProducts();
	
	public Product getProductById(long id);
	
	public List<Product> getProductsByCategory(long categoryId);
	
	// lấy sản phẩm theo danh mục và phân trang
	public List<Product> getProductsByCategory(long categoryId, int pageNo, int pageSize);
	
	public int countAllProduct();

//	public boolean addProduct(Product product);
//
//	public boolean updateProduct(Product product);
//
//	public int countAllProduct();
//
//	public List<Product> getProducts(int pageNo, int pageSize);
	/*
	 *
	 * 
	 * public List<Product> getProducts(int pageNo, int pageSize) { String jpql =
	 * "SELECT p FROM Product p"; TypedQuery<Product> query =
	 * entityManager.createQuery(jpql, Product.class); query.setFirstResult((pageNo
	 * - 1) * pageSize); query.setMaxResults(pageSize); return
	 * query.getResultList(); }
	 */

//	public List<Product> getProductsByCategory(int categoryId);
//
//	public List<Product> getProductsByCategory(int categoryId, int pageNo, int pageSize);
//
//	public List<Product> getProductsByPrice(double min, double max);
//
//	public List<Product> getProductsByPrice(double min, double max, int pageNo, int pageSize);
//
//	
//
//	
//
//	public List<Product> searchByName(String text);

//	 public List<Product> getListByPage(List<Product> list, int start, int end) {
//	        ArrayList<Product> arr = new ArrayList<>();
//	        for (int i = start; i < end; i++) {
//	            arr.add(list.get(i));
//	        }
//	        return arr;
//	    }

}
