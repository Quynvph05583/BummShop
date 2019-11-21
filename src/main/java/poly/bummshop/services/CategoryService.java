package poly.bummshop.services;

import java.util.List;

import poly.bummshop.entity.Category;

public interface CategoryService {
	// get category all
	List<Category> getAll();

	// get category by id
	Category getOne(Integer id);

	// create category
	Category createCategory(Category category);
	
	// delete category
	boolean deleteCategory(Integer id);
	
	// Update category
	
	boolean updateCategory(Category category);
}
