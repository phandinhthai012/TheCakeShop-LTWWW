package com.iuh.spring.dao;

import com.iuh.spring.entity.Address;

public interface AddressDAO {
	
	public Address getAddressById(int id);

	public Address getAddressByUserId(int userId);

	public boolean insertAddress(Address address);

	public boolean updateAddress(Address address);

}
