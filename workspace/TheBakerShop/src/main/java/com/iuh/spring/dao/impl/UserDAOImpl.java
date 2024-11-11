package com.iuh.spring.dao.impl;

import java.util.List;

import org.hibernate.Session;
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
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User";
		List<User> list = session.createQuery(hql, User.class).getResultList();
		return list;
	}

	@Override
	@Transactional
	public User getUserById(long id) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.get(User.class, id);
		return user;
	}

	@Override
	@Transactional
	public User getUserByEmailAndPassWord(String email, String password) {
		String hql = "select u from User u where u.email = :email and u.password = :password";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("email", email)
				.setParameter("password", password).uniqueResult();
	}

	@Override
	@Transactional
	public int checkRole(String email, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	@Transactional
	public boolean insertUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.persist(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	@Transactional
	public boolean updateUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.merge(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	@Transactional
	public boolean deleteUser(long id) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.get(User.class, id);
		try {
			session.remove(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	@Transactional
	public boolean checkEmailExist(String email) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select u from User u where u.email = :email";
		User user = session.createQuery(hql, User.class).setParameter("email", email).uniqueResult();
		if (user != null) {
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public int countAllUser() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select count(u) from User u";
		Long count = session.createQuery(hql, Long.class).uniqueResult();
		return count.intValue();
	}

	@Override
	@Transactional
	public boolean changePassword(User user) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.merge(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

}
