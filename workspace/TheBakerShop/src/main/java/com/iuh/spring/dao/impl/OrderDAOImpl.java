package com.iuh.spring.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.OrderDAO;
import com.iuh.spring.entity.Order;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	@Transactional
	public List<Order> getAllOrder() {
		String hql = "FROM Order";
		return sessionFactory.getCurrentSession().createQuery(hql, Order.class).getResultList();
	}

	@Override
	@Transactional
	public List<Order> getAllOrderByUserId(long userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Order o WHERE o.user.userId = :userId";
		List<Order> list = session.createQuery(hql, Order.class).setParameter("userId", userId).getResultList();
		return list;
	}

}
