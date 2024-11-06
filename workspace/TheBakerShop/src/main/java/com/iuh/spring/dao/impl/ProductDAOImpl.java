package com.iuh.spring.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.ProductDAO;
import com.iuh.spring.entity.Product;

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
		return currentSession.createQuery(hql, Product.class).setMaxResults(12).getResultList();
		
	}
	@Override
	@Transactional
	public Product getProductById(long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.get(Product.class, id);
	}

}
