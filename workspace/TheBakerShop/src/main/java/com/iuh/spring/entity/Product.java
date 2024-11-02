package com.iuh.spring.entity;

import java.util.List;

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
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name = "product_id")
	private long productId;
	@Column(name = "product_name",columnDefinition = "NVARCHAR(255)")
	private String productName;
	@Column(name = "description",columnDefinition = "NVARCHAR(255)")
	private String description;
	@Column(name="price")
	private double price;
	@Column(name = "image")
	private String image;
	@Column(name = "stock_quantity")
	private int stockQuantity;
	@Column(name = "size")
	private int size;
	@ManyToOne()
	@JoinColumn(name = "category_id")
	private Category category;
	@OneToMany(mappedBy = "product")
	private List<OrderDetail> orderDetails;
	
	public Product() {
		super();
	}

	public Product(String productName, String description, double price, String image, int stockQuantity, int size,
			Category category) {
		super();
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.image = image;
		this.stockQuantity = stockQuantity;
		this.size = size;
		this.category = category;
	}

	public Product(long productId, String productName, String description, double price, String image,
			int stockQuantity, int size, Category category, List<OrderDetail> orderDetails) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.image = image;
		this.stockQuantity = stockQuantity;
		this.size = size;
		this.category = category;
		this.orderDetails = orderDetails;
	}

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getStockQuantity() {
		return stockQuantity;
	}

	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}
	
}
