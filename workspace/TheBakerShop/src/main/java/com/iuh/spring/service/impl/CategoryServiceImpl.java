package com.iuh.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iuh.spring.dao.CatergoryDAO;
import com.iuh.spring.entity.Category;
import com.iuh.spring.service.CategoryService;


@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CatergoryDAO catergoryDAO;

	@Override
	@Transactional
	public List<Category> getAllCategory() {
		return catergoryDAO.getAllCategory();
	}

	@Override
	public Category getCategoryById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
