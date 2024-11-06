package com.iuh.spring.service;

import com.iuh.spring.entity.Address;

public interface AddressService {
	public Address getAddressByUserId(long userId);

	public boolean insertAddress(Address address);

	public boolean updateAddress(Address address);
}
