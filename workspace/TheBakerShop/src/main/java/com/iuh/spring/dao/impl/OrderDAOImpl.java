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

	@Override
	@Transactional
	public List<Order> getAllOrderByStatus(String status) {
		String hql = "FROM Order o WHERE o.status = :status";
		List<Order> list = sessionFactory.getCurrentSession().createQuery(hql, Order.class)
				.setParameter("status", status).getResultList();
		return list;
	}

	@Override
	@Transactional
	public boolean createOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.persist(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	@Transactional
	public boolean updateOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.merge(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	@Transactional
	public Order getOrderById(long orderId) {
		Session session = sessionFactory.getCurrentSession();
		Order order = session.find(Order.class, orderId);
		return order;
	}

	@Override
	@Transactional
	public boolean updateStatusOrder(long orderId, String status) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "UPDATE Order o SET o.status = :status WHERE o.orderId = :orderId";
		int row = session.createNativeQuery(hql).setParameter("status", status).setParameter("orderId", orderId)
				.executeUpdate();
		if (row > 0) {
			return true;

		}
		return false;
	}
}
