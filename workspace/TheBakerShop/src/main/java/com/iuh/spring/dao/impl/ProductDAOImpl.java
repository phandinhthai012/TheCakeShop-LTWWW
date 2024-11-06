package com.iuh.spring.dao.impl;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.ProductDAO;
import com.iuh.spring.entity.Product;

import jakarta.servlet.jsp.jstl.sql.Result;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Product> getAllProducts() {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.createQuery("from Product", Product.class).getResultList();
	}

	// 5> List product show in footer => random sp
	@Override
	@Transactional
	public List<Product> getFeaturedProducts() {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql = "select p from Product p order by p.productName";
		return currentSession.createQuery(hql, Product.class).setMaxResults(8).getResultList();

	}

	@Override
	@Transactional
	public Product getProductById(long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.get(Product.class, id);
	}

	@Override
	@Transactional
	public List<Product> getProductsByCategory(long categoryId) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql = "select p from Product p where p.category.categoryId = :categoryId order by p.productName";
		return currentSession.createQuery(hql, Product.class).setParameter("categoryId", categoryId).setMaxResults(4)
				.getResultList();
	}

	@Override
	@Transactional
	public List<Product> getProductsByCategory(long categoryId, int pageNo, int pageSize) {
		String category = "%" + categoryId + "%";
		if (categoryId == 0) {
			category = "";
		}
		Session currentSession = sessionFactory.getCurrentSession();
		String sql = "SELECT * FROM products WHERE category_id like :categoryId ORDER BY product_name OFFSET (:pageNo - 1) * :pageSize ROWS FETCH NEXT :pageSize ROWS ONLY";
		List<Product> list = currentSession.createNativeQuery(sql, Product.class)
	            .setParameter("categoryId", "%" + category + "%")
	            .setParameter("pageNo", pageNo)
	            .setParameter("pageSize", pageSize)
	            .getResultList();
	    
	    return list;
	}

	@Override
	@Transactional
	public int countAllProduct() {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql = "select count(p) from Product p";
		return currentSession.createQuery(hql, Long.class).getSingleResult().intValue();
	}

}
