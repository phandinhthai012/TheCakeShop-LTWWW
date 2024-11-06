package com.iuh.spring.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iuh.spring.dao.UserDAO;
import com.iuh.spring.entity.User;

import jakarta.transaction.Transactional;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public User getUserByEmailAndPassWord(String email, String password) {
		String hql = "select u from User u where u.email = :email and u.password = :password";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("email", email).setParameter("password", password).uniqueResult();
	}

	@Override
	public int checkRole(String email, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getNumberUsers() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkEmailExist(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int countAllUser() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void changePassword(User user) {
		// TODO Auto-generated method stub

	}

}
