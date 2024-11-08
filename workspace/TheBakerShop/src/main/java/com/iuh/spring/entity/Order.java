package com.iuh.spring.entity;

import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
@Entity
@Table(name = "orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private long orderId;
	@ManyToOne()
	@JoinColumn(name = "user_id",nullable = false)
	private User user;
	@Column(name = "total_order")
	private double totalOrder;
	@Column(name = "status",columnDefinition = "NVARCHAR(255)")
	private String status;
	@Column(name = "order_date")
	private Date orderDate;
	
	@OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
	private List<OrderDetail> orderDetails;
	
	public Order() {
		super();
	}

	public Order(User user, double totalOrder, String status, Date orderDate) {
		super();
		this.user = user;
		this.totalOrder = totalOrder;
		this.status = status;
		this.orderDate = orderDate;
	}

	public Order(long orderId, User user, double totalOrder, String status, Date orderDate) {
		super();
		this.orderId = orderId;
		this.user = user;
		this.totalOrder = totalOrder;
		this.status = status;
		this.orderDate = orderDate;
	}

	public long getOrderId() {
		return orderId;
	}

	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public double getTotalOrder() {
		return totalOrder;
	}

	public void setTotalOrder(double totalOrder) {
		this.totalOrder = totalOrder;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}
	
}
