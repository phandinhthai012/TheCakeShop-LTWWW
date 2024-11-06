package com.iuh.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.AddressDAO;
import com.iuh.spring.entity.Address;
import com.iuh.spring.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDAO addressDAO;

	@Override
	@Transactional
	public Address getAddressByUserId(long userId) {
		
		return addressDAO.getAddressByUserId(userId);
	}

	@Override
	@Transactional
	public boolean insertAddress(Address address) {
		// TODO Auto-generated method stub
		return addressDAO.insertAddress(address);
	}

	@Override
	@Transactional
	public boolean updateAddress(Address address) {
		// TODO Auto-generated method stub
		return addressDAO.updateAddress(address);
	}

}
