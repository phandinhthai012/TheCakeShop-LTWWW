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

}
