package com.iuh.spring.service;

import java.util.List;

import com.iuh.spring.entity.OrderDetail;

public interface OrderDetailService {
	public List<OrderDetail> getOrderDetailByOrderId(long orderId);

	public boolean insertOrderDetailByOrderId(OrderDetail orderDetail,Long orderId);

	public boolean updateOrderDetailByOrderId(OrderDetail orderDetail, Long orderId);

}
