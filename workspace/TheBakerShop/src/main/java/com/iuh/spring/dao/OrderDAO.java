package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.Order;

public interface OrderDAO {
	public List<Order> getAllOrder();

	public List<Order> getAllOrderByUserId(int userId);

	public Order getOrderById(int id);

	public boolean insertOrder(Order order);

	public boolean updateOrder(Order order);
	
	public List<Order> getOrderByStatus(String status);

}
