package poly.bummshop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import poly.bummshop.common.Constants;
import poly.bummshop.dto.ProductDto;
import poly.bummshop.entity.Order;
import poly.bummshop.entity.Product;
import poly.bummshop.entity.User;
import poly.bummshop.services.CategoryService;
import poly.bummshop.services.OrdersService;
import poly.bummshop.services.ProductService;

@Controller
public class ProductControllerClient {

	private ProductService productService;
	private CategoryService categoryService;
	private OrdersService ordersService;
	
	// Payment cart
	@PostMapping(Constants.URL_PAYMENT)
	public ModelAndView payment(HttpSession session, @RequestParam(Constants.USERNAME) User username,
			@RequestParam(Constants.ADDRESS) String address, @RequestParam(Constants.TOTAL) Double total,
			@RequestParam(Constants.NAME) String name, @RequestParam(Constants.PHONE) String phone,
			@RequestParam(Constants.EMAIL) String email) {
		ModelAndView m = new ModelAndView(Constants.REDIRECT_PRODUCT_CLIENT_HOME_PAGE);
		try {
			Order order = new Order();
			order.setUser(username);
			order.setStatus(1);
			order.setAddress(address);
			order.setName(name);
			order.setPhone(phone);
			order.setEmail(email);
			order.setOrderTotalPrice(total);
			ordersService.createOrder(order);
			session.removeAttribute(Constants.SESSION_LIST_CART);
			session.removeAttribute(Constants.SESSION_TOTAL_PRICE);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return m;

	}

	// home
	@GetMapping(value = { Constants.URL_HOME_PAGE, Constants.URL_HOME, Constants.URL_HOME_ })
	public ModelAndView homeProduct(@PathVariable(name = Constants.PAGE_NUMBER, required = false) String pageNumber,
			@RequestParam(name = Constants.SEARCH, required = false) String search,
			@RequestParam(name = Constants.CATEGORY, required = false) String id) {
		int pageNumbers = 1;
		if (pageNumber != null) {
			pageNumbers = Integer.parseInt(pageNumber);
		}
		ModelAndView m = new ModelAndView(Constants.PRODUCT_CLIENT_HOME_PAGE);
		int pageSize = 12;
		int next = -1;
		int back = -1;
		int totalPage = 0;
		String sql = Constants.STRING_NULL;
		List<?> list = null;
		list = new ArrayList<Product>();
		list = productService.getAllProduct();
		if (id != null) {
			sql = Constants.CATEGORY_SQL + id + Constants.QUOTATION;
			list = productService.getProductSearchByPage(sql);
		}

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
		m.addObject(Constants.CATEGORY_ID, id);
		m.addObject(Constants.CATEGORY, categoryService.getAll());
		m.addObject(Constants.SEARCH, search);
		m.addObject(Constants.NEXT, next);
		m.addObject(Constants.CURREN_PAGE, pageNumbers);
		m.addObject(Constants.BACK, back);
		m.addObject(Constants.TOTAL_PAGE, totalPage);
		m.addObject(Constants.ALL_PRODUCT, productService.getProductByPage(pageNumbers, pageSize, sql));
		return m;
	}

	// list product by page
	@GetMapping(value = { Constants.URL_LIST_PRODUCT_CLIENT_PAGE, Constants.URL_LIST_PRODUCT_CLIENT })
	public ModelAndView paginationProduct(
			@PathVariable(name = Constants.PAGE_NUMBER, required = false) String pageNumber,
			@RequestParam(name = Constants.SEARCH, required = false) String search,
			@RequestParam(name = Constants.CATEGORY, required = false) String id) {
		int pageNumbers = 1;
		if (pageNumber != null) {
			pageNumbers = Integer.parseInt(pageNumber);
		}
		ModelAndView m = new ModelAndView(Constants.PRODUCT_CLIENT_PAGE);
		int pageSize = 12;
		int next = -1;
		int back = -1;
		int totalPage = 0;
		String sql = Constants.STRING_NULL;
		List<?> list = null;
		if (id != null) {
			sql = Constants.CATEGORY_SQL + id + Constants.QUOTATION;
			list = new ArrayList<ProductDto>();
			list = productService.getProductSearchByPage(sql);
		}

		// search by name
		if (search == null || search.equals(Constants.STRING_NULL)) {
			if (sql.isEmpty()) {
				list = new ArrayList<Product>();
				list = productService.getAllProduct();
			}

		} else {
			if (!sql.isEmpty()) {
				sql += Constants.NAME_LIKE + search + Constants.PRICE_LIKE + search + Constants.BINARY;
			}
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
		m.addObject(Constants.CATEGORY_ID, id);
		m.addObject(Constants.CATEGORY, categoryService.getAll());
		m.addObject(Constants.SEARCH, search);
		m.addObject(Constants.NEXT, next);
		m.addObject(Constants.CURREN_PAGE, pageNumbers);
		m.addObject(Constants.BACK, back);
		m.addObject(Constants.TOTAL_PAGE, totalPage);
		m.addObject(Constants.ALL_PRODUCT, productService.getProductByPage(pageNumbers, pageSize, sql));
		return m;
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
	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

}
