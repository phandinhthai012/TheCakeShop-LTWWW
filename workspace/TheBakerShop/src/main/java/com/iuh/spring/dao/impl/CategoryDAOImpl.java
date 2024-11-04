package com.iuh.spring.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.CatergoryDAO;
import com.iuh.spring.entity.Category;

@Repository
public class CategoryDAOImpl implements CatergoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Category> getAllCategory() {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.createQuery("from Category", Category.class).getResultList();
	}

	@Override
	public Category getCategoryById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
