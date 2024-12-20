package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.OrderDetail;

public interface OrderDetailDAO {

	public List<OrderDetail> getOrderDetailByOrderId(long orderId);

	public boolean insertOrderDetailByOrderId(OrderDetail orderDetail,Long orderId);

	public boolean updateOrderDetailByOrderId(OrderDetail orderDetail, Long orderId);

}
