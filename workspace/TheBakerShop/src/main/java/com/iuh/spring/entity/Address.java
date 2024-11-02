package com.iuh.spring.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "address")
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "address_id")
	private long addressId;
	@Column(name = "city",columnDefinition = "NVARCHAR(255)")
	private String city;
	@Column(name = "dictrict",columnDefinition = "NVARCHAR(255)")
	private String dictrict;
	@Column(name = "address_Info",columnDefinition = "NVARCHAR(255)")
	private String addressInfo;
	@OneToOne
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;
	public Address(String city, String dictrict, String addressInfo, User user) {
		super();
		this.city = city;
		this.dictrict = dictrict;
		this.addressInfo = addressInfo;
		this.user = user;
	}
	public Address(long addressId, String city, String dictrict, String addressInfo, User user) {
		super();
		this.addressId = addressId;
		this.city = city;
		this.dictrict = dictrict;
		this.addressInfo = addressInfo;
		this.user = user;
	}
	public Address() {
		super();
	}
	public long getAddressId() {
		return addressId;
	}
	public void setAddressId(long addressId) {
		this.addressId = addressId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDictrict() {
		return dictrict;
	}
	public void setDictrict(String dictrict) {
		this.dictrict = dictrict;
	}
	public String getAddressInfo() {
		return addressInfo;
	}
	public void setAddressInfo(String addressInfo) {
		this.addressInfo = addressInfo;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
