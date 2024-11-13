package com.iuh.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iuh.spring.dao.UserDAO;
import com.iuh.spring.entity.User;
import com.iuh.spring.service.UserService;

import jakarta.transaction.Transactional;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public User getUserByEmailAndPassWord(String email, String password) {
		return userDAO.getUserByEmailAndPassWord(email, password);
	}

	@Override
	@Transactional
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userDAO.getAllUser();
	}

	@Override
	@Transactional
	public User getUserById(long id) {
		// TODO Auto-generated method stub
		return userDAO.getUserById(id);
	}

	@Override
	@Transactional
	public int checkRole(String email, String password) {
		// TODO Auto-generated method stub
		return userDAO.checkRole(email, password);
	}

	@Override
	@Transactional
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.insertUser(user);
	}

	@Override
	@Transactional
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.updateUser(user);
	}

	@Override
	@Transactional
	public boolean deleteUser(long id) {
		// TODO Auto-generated method stub
		return userDAO.deleteUser(id);
	}

	@Override
	@Transactional
	public boolean checkEmailExist(String email) {
		// TODO Auto-generated method stub
		return userDAO.checkEmailExist(email);
	}

	@Override
	@Transactional
	public int countAllUser() {
		// TODO Auto-generated method stub
		return userDAO.countAllUser();
	}

	@Override
	@Transactional
	public boolean changePassword(User user) {
		// TODO Auto-generated method stub
		return userDAO.changePassword(user);
	}

	@Override
	@Transactional
	public int countUserByRole(String role) {
		// TODO Auto-generated method stub
		return userDAO.countUserByRole(role);
	}
	
}
