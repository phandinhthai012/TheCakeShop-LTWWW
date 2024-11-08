package com.iuh.spring.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.OrderDetailDAO;
import com.iuh.spring.entity.OrderDetail;

@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<OrderDetail> getOrderDetailByOrderId(long orderId) {
		String hql = "FROM OrderDetail od WHERE od.order.orderId = :orderId";
		Session session = sessionFactory.getCurrentSession();
		List<OrderDetail> list = session.createQuery(hql, OrderDetail.class).setParameter("orderId", orderId).getResultList();
		return list;
	}

	@Override
	@Transactional
	public boolean insertOrderDetailByOrderId(OrderDetail orderDetail, Long orderId) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.persist(orderDetail);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	@Transactional
	public boolean updateOrderDetailByOrderId(OrderDetail orderDetail, Long orderId) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.merge(orderDetail);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
