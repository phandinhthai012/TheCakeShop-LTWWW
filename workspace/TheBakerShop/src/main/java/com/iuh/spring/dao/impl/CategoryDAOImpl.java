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
	@Transactional
	public Category getCategoryById(long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.get(Category.class, id);
	}

	@Override
	@Transactional
	public boolean insertCategory(Category category) {
		Session currentSession = sessionFactory.getCurrentSession();
		try {
			currentSession.persist(category);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	@Transactional
	public boolean updateCategory(Category category) {
		Session currentSession = sessionFactory.getCurrentSession();
		try {
			currentSession.merge(category);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
