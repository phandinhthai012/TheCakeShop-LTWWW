package com.iuh.spring.dao;

import com.iuh.spring.entity.Address;

public interface AddressDAO {
	
	public Address getAddressByUserId(long userId);

	public boolean insertAddress(Address address);

	public boolean updateAddress(Address address);

}
