package com.iuh.spring.service;

import java.util.List;

import com.iuh.spring.entity.User;

public interface UserService {
	public User getUserByEmailAndPassWord(String email, String password);

	public List<User> getAllUser();

	public User getUserById(long id);

	public int checkRole(String email, String password);

	public boolean insertUser(User user);

	public boolean updateUser(User user);

	public boolean deleteUser(long id);

	public boolean checkEmailExist(String email);

	public int countAllUser();

	public boolean changePassword(User user);
}
