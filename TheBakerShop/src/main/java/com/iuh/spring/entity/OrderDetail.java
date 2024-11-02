package com.iuh.spring.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
@Entity
@Table(name = "order_detail")
public class OrderDetail {
	@Id
	@ManyToOne()
	@JoinColumn(name = "order_id", nullable = false)
	private Order order;
	@Id
	@ManyToOne()
	@JoinColumn(name = "product_id", nullable = false)
	private Product product;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "price")
	private double price;
	
	public OrderDetail() {
		super();
	}

	public OrderDetail(Order order, Product product, int quantity, double price) {
		super();
		this.order = order;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
}
