package com.iuh.spring.service;

import com.iuh.spring.entity.User;

public interface UserService {
	public User getUserByEmailAndPassWord(String email, String password);
}
