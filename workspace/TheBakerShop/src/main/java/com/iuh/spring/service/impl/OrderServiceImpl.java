package com.iuh.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.OrderDAO;
import com.iuh.spring.entity.Order;
import com.iuh.spring.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	@Transactional
	public List<Order> getAllOrder() {
		
		return orderDAO.getAllOrder();
	}

	@Override
	@Transactional
	public List<Order> getAllOrderByUserId(long userId) {
		// TODO Auto-generated method stub
		return orderDAO.getAllOrderByUserId(userId);
	}

	@Override
	@Transactional
	public List<Order> getAllOrderByStatus(String status) {
		// TODO Auto-generated method stub
		return orderDAO.getAllOrderByStatus(status);
	}

	@Override
	@Transactional
	public boolean createOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDAO.createOrder(order);
	}

	@Override
	@Transactional
	public boolean updateOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDAO.updateOrder(order);
	}

	@Override
	@Transactional
	public boolean updateStatusOrder(long orderId, String status) {
		// TODO Auto-generated method stub
		return orderDAO.updateStatusOrder(orderId, status);
	}

	@Override
	@Transactional
	public Order getOrderById(long orderId) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderById(orderId);
	}

}
