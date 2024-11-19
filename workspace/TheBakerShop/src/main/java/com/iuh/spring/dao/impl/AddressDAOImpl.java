package com.iuh.spring.dao.impl;

import java.util.Objects;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.AddressDAO;
import com.iuh.spring.entity.Address;

@Repository
public class AddressDAOImpl implements AddressDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Address getAddressByUserId(long userId) {
		String hql = "FROM Address a WHERE a.user.userId = :userId";
		
		try {
			Address address = sessionFactory.getCurrentSession().createQuery(hql, Address.class)
					.setParameter("userId", userId).getSingleResult();
			if (Objects.isNull(address)) {
				return null;
			}
			return address;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	@Transactional
	public boolean insertAddress(Address address) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.persist(address);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	@Transactional
	public boolean updateAddress(Address address) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.merge(address);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
