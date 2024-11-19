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

	@Override
	@Transactional
	public double getTotolOrderPrice() {
		// TODO Auto-generated method stub
		return orderDAO.getTotolOrderPrice();
	}

	@Override
	@Transactional
	public List<Order> getOrderByStatus(String status) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderByStatus(status);
	}

	@Override
	@Transactional
	public List<Order> getOrderByMonthAndStatus(String month, String status) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderByMonthAndStatus(month, status);
	}

	@Override
	@Transactional
	public List<Order> getOrderByYearAndStatus(String year, String status) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderByYearAndStatus(year, status);
	}

	@Override
	@Transactional
	public int countOrderByStatus(String status) {
		// TODO Auto-generated method stub
		return orderDAO.countOrderByStatus(status);
	}

	@Override
	@Transactional
	public double getTotalOrderNotIncluceCanceled() {
		// TODO Auto-generated method stub
		return orderDAO.getTotalOrderNotIncluceCanceled();
	}

}
