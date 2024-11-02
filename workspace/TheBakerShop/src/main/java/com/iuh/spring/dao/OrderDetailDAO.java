package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.OrderDetail;

public interface OrderDetailDAO {
	public List<OrderDetail> getAllOrderDetail();

	public OrderDetail getOrderDetailByOrderId(int orderId);

	public boolean insertOrderDetail(OrderDetail orderDetail);

	public boolean updateOrderDetail(OrderDetail orderDetail);

}
