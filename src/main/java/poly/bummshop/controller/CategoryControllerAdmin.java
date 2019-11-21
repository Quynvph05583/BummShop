package poly.bummshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import poly.bummshop.common.Constants;
import poly.bummshop.entity.Category;
import poly.bummshop.services.CategoryService;

@Controller
@RequestMapping(Constants.URL_ADMIN)
public class CategoryControllerAdmin {

	private CategoryService categoryService;

	// get all category
	@GetMapping(Constants.URL_LIST_CATEGORY_PAGE)
	public ModelAndView listCategory() {
		ModelAndView m = new ModelAndView(Constants.CATEGORY_PAGE);
		m.addObject(Constants.ADD_OBJECT_ALL_CATEGORY, categoryService.getAll());
		return m;
	}

	@GetMapping(Constants.URL_CREATE_CATEGORY_PAGE)
	public ModelAndView createCategory() {
		ModelAndView m = new ModelAndView(Constants.CREATE_CATEGORY_PAGE);
		return m;
	}

	// Create Category
	@PostMapping(Constants.URL_CREATE_CATEGORY_PAGE)
	public ModelAndView createCategory(@RequestParam(Constants.NAME) String name) {
		try {
			Category category = new Category();
			category.setName(name);
			categoryService.createCategory(category);
			return new ModelAndView(Constants.REDIRECT_CATEGORY_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(Constants.REDIRECT_CATEGORY_PAGE);
	}

	// delete by id
	@GetMapping(Constants.URL_DELETE_CATEGORY_PAGE)
	public String deleteCategory(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id, RedirectAttributes ra) {
		String message = Constants.DELETE_FAIL;
		try {
			boolean result = categoryService.deleteCategory(id);
			message = result == true ? Constants.DELETE_SUCCESS : Constants.STRING_NULL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute(Constants.MESSAGE, message);
		return Constants.REDIRECT_CATEGORY_PAGE;
	}

	@GetMapping(Constants.URL_EDIT_CATEGORY_PAGE)
	public String editCategory(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id, ModelMap map) {
		Category category = categoryService.getOne(id);
		if (category == null) {
			return Constants.REDIRECT_CATEGORY_PAGE;
		}
		if (category != null) {
			map.addAttribute(Constants.ADD_ADDTRIBUTE_EDIT_CATEGORY, category);
		}
		return Constants.EDIT_CATEGORY_PAGE;
	}

	// edit category by id
	@PostMapping(Constants.URL_EDIT_CATEGORY_PAGE)
	public ModelAndView editCategory(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id, @RequestParam(Constants.NAME) String name) {
		try {
			Category category = new Category();
			category.setId(id);
			category.setName(name);
			categoryService.updateCategory(category);
			return new ModelAndView(Constants.REDIRECT_CATEGORY_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(Constants.REDIRECT_CATEGORY_PAGE);
	}

	@Autowired
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

}
