package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.Order;

public interface OrderDAO {
	public List<Order> getAllOrder();

	public List<Order> getAllOrderByUserId(long userId);

	public List<Order> getAllOrderByStatus(String status);

	public Order getOrderById(long orderId);

	public boolean createOrder(Order order);

	public boolean updateOrder(Order order);

	public boolean updateStatusOrder(long orderId, String status);

	public double getTotolOrderPrice();

	public List<Order> getOrderByStatus(String status);

	public List<Order> getOrderByMonthAndStatus(String month, String status);
	
	public List<Order> getOrderByYearAndStatus(String year, String status);
	public int countOrderByStatus(String status);

}
