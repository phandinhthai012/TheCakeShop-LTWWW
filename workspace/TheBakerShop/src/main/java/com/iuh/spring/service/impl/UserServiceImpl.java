package com.iuh.spring.service.impl;

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
	
}
