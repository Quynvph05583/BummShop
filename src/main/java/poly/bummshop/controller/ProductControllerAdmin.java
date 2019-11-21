package poly.bummshop.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import poly.bummshop.common.Constants;
import poly.bummshop.dto.ProductDto;
import poly.bummshop.dto.UserDto;
import poly.bummshop.entity.Product;
import poly.bummshop.entity.User;
import poly.bummshop.services.CategoryService;
import poly.bummshop.services.ProductService;
import poly.bummshop.services.UserService;

@Controller
@RequestMapping(Constants.URL_ADMIN)
public class ProductControllerAdmin {

	private ProductService productService;
	private CategoryService categoryService;
	private UserService userService;

	// Get admin
	@GetMapping(Constants.URL_ADMIN)
	public String admin() {
		return Constants.ADMIN_PAGE;
	}

	// get create product
	@GetMapping(Constants.URL_CREATE_PRODUCT_ADMIN)
	public String createProduct(ModelMap map) {
		map.addAttribute(Constants.CATEGORY, categoryService.getAll());
		return Constants.CREATE_PRODUCT_PAGE;
	}

	// Edit product
	@GetMapping(Constants.URL_EDIT_ID_PRODUCT_ADMIN)
	public String editProduct(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id, ModelMap map) {
		Product product = productService.getOne(id);
		map.addAttribute(Constants.CATEGORY, categoryService.getAll());
		if (product == null) {
			return Constants.REDIRECT_PRODUCT;
		}
		if (product != null) {
			map.addAttribute(Constants.ADDTRIBUTE_EDIT_PRODUCT, product);
		}
		return Constants.EDIT_PRODUCT_PAGE;

	}

	// List all product
	@GetMapping(value = { Constants.URL_LIST_PRODUCT_CLIENT_PAGE, Constants.URL_LIST_PRODUCT_CLIENT })
	public ModelAndView paginationProduct(
			@PathVariable(name = Constants.PAGE_NUMBER, required = false) String pageNumber,
			@RequestParam(name = Constants.SEARCH, required = false) String search) {
		int pageNumbers = 1;
		if (pageNumber != null) {
			pageNumbers = Integer.parseInt(pageNumber);
		}
		ModelAndView m = new ModelAndView(Constants.PRODUCT_PAGE);
		int pageSize = 12;
		int next = -1;
		int back = -1;
		int totalPage = 0;
		String sql = Constants.STRING_NULL;
		List<?> list = null;
		// search by name
		if (search == null || search.equals(Constants.STRING_NULL)) {
			list = new ArrayList<Product>();
			list = productService.getAllProduct();
		} else {
			sql = Constants.NAME_LIKE + search + Constants.PRICE_LIKE + search + Constants.BINARY;
			list = new ArrayList<ProductDto>();
			list = productService.getProductSearchByPage(sql);
		}
		// Condition totalPage
		if (list.size() % pageSize == 0) {
			totalPage = list.size() / pageSize;
		} else {
			totalPage = (list.size() / pageSize) + 1;
		}

		if (pageNumbers > totalPage) {
			pageNumbers = 1;
		}
		if (pageNumbers > 1) {
			back = pageNumbers - 1;
		}
		if (pageNumbers < totalPage) {
			next = pageNumbers + 1;
		}

		m.addObject(Constants.SEARCH, search);
		m.addObject(Constants.NEXT, next);
		m.addObject(Constants.CURREN_PAGE, pageNumbers);
		m.addObject(Constants.BACK, back);
		m.addObject(Constants.TOTAL_PAGE, totalPage);
		m.addObject(Constants.ALL_PRODUCT, productService.getProductByPage(pageNumbers, pageSize, sql));
		return m;
	}

	// Delete product by id
	@GetMapping(Constants.URL_DELETE_PRODUCT_ADMIN)
	public String deleteProduct(@PathVariable(Constants.ID_PRODUCT_ADMIN) int id,
			@PathVariable(Constants.CURREN_PAGE) int currenPage, RedirectAttributes ra) {
		String message = Constants.DELETE_FAIL;
		try {
			boolean result = productService.deleteProduct(id);
			message = result == true ? Constants.DELETE_SUCCESS : "";
		} catch (Exception e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute(Constants.MESSAGE, message);
		return Constants.REDIRECT_PRODUCT + Constants.CONNECT_THE_URL + currenPage;
	}

	// Create by id
	@PostMapping(Constants.URL_CREATE_PRODUCT_ADMIN)
	public ModelAndView createProduct(@RequestParam(Constants.NAME) String name,
			@RequestParam(Constants.PRICE) double price, @RequestParam(Constants.IMAGE) MultipartFile image,
			@RequestParam(Constants.DETAIL) String detail, @RequestParam(Constants.QUANTITY) Integer quantity,
			@RequestParam(Constants.CATEGORY) Integer categoryId) {
		try {

			Product product = new Product();
			product.setName(name);
			product.setPrice(price);
			if (!image.isEmpty()) {
				byte[] bytes = image.getBytes();
				Path path = Paths.get(image.getOriginalFilename());
				Files.write(path, bytes);
				product.setImage(image.getOriginalFilename());
			}
			product.setDetail(detail);
			product.setQuantity(quantity);
			product.setCategory(categoryService.getOne(categoryId));
			productService.createProduct(product);
			return new ModelAndView(Constants.REDIRECT_PRODUCT);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(Constants.REDIRECT_PRODUCT);
	}

	// Edit product by id
	@PostMapping(Constants.URL_EDIT_ID_PRODUCT_ADMIN)
	public ModelAndView editProduct(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id,
			@RequestParam(Constants.NAME) String name, @RequestParam(Constants.PRICE) double price,
			@RequestParam(Constants.IMAGE) MultipartFile image, @RequestParam(Constants.DETAIL) String detail,
			@RequestParam(Constants.QUANTITY) Integer quantity, @RequestParam(Constants.CATEGORY) Integer categoryId) {
		try {

			Product product = new Product();
			product.setId(id);
			product.setName(name);
			product.setPrice(price);
			Product p = productService.getOne(id);
			product.setImage(p.getImage());
			if (!image.isEmpty()) {
				byte[] bytes = image.getBytes();
				Path path = Paths.get(image.getOriginalFilename());
				Files.write(path, bytes);
				product.setImage(image.getOriginalFilename());
			}
			product.setDetail(detail);
			product.setQuantity(quantity);
			product.setCategory(categoryService.getOne(categoryId));
			productService.updateProduct(product);
			return new ModelAndView(Constants.REDIRECT_PRODUCT);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(Constants.REDIRECT_PRODUCT);
	}

	// List all user
	@GetMapping(value = { Constants.URL_LIST_USER_PAGE_PRODUCT_ADMIN, Constants.URL_LIST_USER_PRODUCT_ADMIN })
	public ModelAndView listUserByPagination(
			@PathVariable(name = Constants.PAGE_NUMBER, required = false) String pageNumber,
			@RequestParam(name = Constants.SEARCH, required = false) String search) {
		int pageNumbers = 1;
		if (pageNumber != null) {
			pageNumbers = Integer.parseInt(pageNumber);
		}
		ModelAndView m = new ModelAndView(Constants.LIST_USER_PAGE);
		int pageSize = 10;
		int next = -1;
		int back = -1;
		int totalPage = 0;
		String sql = Constants.STRING_NULL;
		List<?> list = null;

		if (search == null || search.equals(Constants.STRING_NULL)) {
			list = new ArrayList<User>();
			list = userService.getAll();
		} else {
			sql = Constants.USERNAME_LIKE + search + Constants.ADDRESS_USER_LIKE + search + Constants.BINARY;
			list = new ArrayList<UserDto>();
			list = userService.getUserSearchByPage(sql);
		}

		// Condition totalPage
		if (list.size() % pageSize == 0) {
			totalPage = list.size() / pageSize;
		} else {
			totalPage = (list.size() / pageSize) + 1;
		}

		if (pageNumbers > 1) {
			back = pageNumbers - 1;
		}
		if (pageNumbers < totalPage) {
			next = pageNumbers + 1;
		}

		m.addObject(Constants.SEARCH, search);
		m.addObject(Constants.NEXT, next);
		m.addObject(Constants.BACK, back);
		m.addObject(Constants.CURREN_PAGE, pageNumbers);
		m.addObject(Constants.TOTAL_PAGE, totalPage);
		m.addObject(Constants.ALL_USER, userService.getUserByPage(pageNumbers, pageSize, sql));
		return m;
	}

	// Delete user by id
	@GetMapping(value = { "/listUser/delete/{username}/{currenPage}" })
	public String deleteUser(@PathVariable(Constants.USERNAME) String username,
			@PathVariable(Constants.CURREN_PAGE) int currenPage, RedirectAttributes ra) {
		String message = Constants.DELETE_FAIL;
		try {
			boolean result = userService.deleteUser(username);
			message = result == true ? Constants.DELETE_SUCCESS : Constants.STRING_NULL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute(Constants.MESSAGE, message);
		return Constants.REDIRECT_USER + Constants.CONNECT_THE_URL + currenPage;
	}

	@Autowired
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@Autowired
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
