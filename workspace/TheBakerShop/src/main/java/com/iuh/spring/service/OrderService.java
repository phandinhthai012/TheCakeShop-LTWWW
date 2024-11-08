package com.iuh.spring.service;

import java.util.List;

import com.iuh.spring.entity.Order;

public interface OrderService {
	public List<Order> getAllOrder();

	public List<Order> getAllOrderByUserId(long userId);
	
	
	public List<Order> getAllOrderByStatus(String status);
	
	public boolean createOrder(Order order);
	
	public boolean updateOrder(Order order);
	public boolean updateStatusOrder(long orderId, String status);
	public Order getOrderById(long orderId);
}
