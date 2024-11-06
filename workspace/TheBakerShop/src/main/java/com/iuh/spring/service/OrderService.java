package com.iuh.spring.service;

import java.util.List;

import com.iuh.spring.entity.Order;

public interface OrderService {
	public List<Order> getAllOrder();

	public List<Order> getAllOrderByUserId(long userId);
}
