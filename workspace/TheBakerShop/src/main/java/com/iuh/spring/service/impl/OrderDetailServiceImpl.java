package com.iuh.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.OrderDetailDAO;
import com.iuh.spring.entity.OrderDetail;
import com.iuh.spring.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	@Override
	@Transactional
	public List<OrderDetail> getOrderDetailByOrderId(long orderId) {
		// TODO Auto-generated method stub
		return orderDetailDAO.getOrderDetailByOrderId(orderId);
	}

	@Override
	@Transactional
	public boolean insertOrderDetailByOrderId(OrderDetail orderDetail, Long orderId) {
		// TODO Auto-generated method stub
		return orderDetailDAO.insertOrderDetailByOrderId(orderDetail, orderId);
	}

	@Override
	@Transactional
	public boolean updateOrderDetailByOrderId(OrderDetail orderDetail, Long orderId) {
		// TODO Auto-generated method stub
		return orderDetailDAO.updateOrderDetailByOrderId(orderDetail, orderId);
	}

}
