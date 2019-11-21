package poly.bummshop.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import poly.bummshop.entity.Category;
import poly.bummshop.repository.CategoryRepository;
import poly.bummshop.services.CategoryService;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	private CategoryRepository categoryRepository;

	@Override
	public List<Category> getAll() {
		return categoryRepository.findAll();
	}

	@Override
	public Category getOne(Integer id) {
		return categoryRepository.getOne(id);
	}

	@Override
	public Category createCategory(Category category) {
		return categoryRepository.save(category);
	}

	@Override
	public boolean deleteCategory(Integer id) {
		if (id != null) {
			categoryRepository.deleteById(id);
			return true;
		}
		return false;
	}

	@Override
	public boolean updateCategory(Category category) {
		boolean result = false;
		try {
			categoryRepository.save(category);
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Autowired
	public void setCategoryRepository(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

}
