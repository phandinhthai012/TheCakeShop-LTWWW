package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.Order;

public interface OrderDAO {
	public List<Order> getAllOrder();

	public List<Order> getAllOrderByUserId(long userId);

}
