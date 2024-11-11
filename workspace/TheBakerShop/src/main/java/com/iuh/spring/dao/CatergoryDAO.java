package com.iuh.spring.dao;

import java.util.List;

import com.iuh.spring.entity.Category;

public interface CatergoryDAO {
	public List<Category> getAllCategory();

	public Category getCategoryById(long id);

	public boolean insertCategory(Category category);

	public boolean updateCategory(Category category);
}
