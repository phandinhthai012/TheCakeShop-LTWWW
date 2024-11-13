package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.User;

public interface UserDAO {
	public List<User> getAllUser();

	public User getUserById(long id);

	public User getUserByEmailAndPassWord(String email, String password);

	public int checkRole(String email, String password);

	public boolean insertUser(User user);

	public boolean updateUser(User user);

	public boolean deleteUser(long id);

	public boolean checkEmailExist(String email);

	public int countAllUser();

	public boolean changePassword(User user);
	
	public int countUserByRole(String role);
}
