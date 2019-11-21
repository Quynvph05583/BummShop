package poly.bummshop.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import poly.bummshop.dto.OrderDto;
import poly.bummshop.entity.Order;
import poly.bummshop.services.OrdersService;
import poly.bummshop.services.UserService;

@Controller
@RequestMapping(Constants.URL_ADMIN)
public class OrdersControllerAdmin {

	private OrdersService ordersService;
	private UserService userService;

	//list order
	@GetMapping(value = { Constants.URL_LIST_ODER_PAGE, Constants.URL_LIST_ODER })
	public ModelAndView paginationOrders(@PathVariable(name = Constants.PAGE_NUMBER, required = false) String pageNumber,
			@RequestParam(name = Constants.SEARCH, required = false) String search) {
		int pageNumbers = 1;
		if (pageNumber != null) {
			pageNumbers = Integer.parseInt(pageNumber);
		}

		ModelAndView m = new ModelAndView(Constants.LIST_ODER_PAGE);
		int pageSize = 12;
		int next = -1;
		int back = -1;
		int totalPage = 0;
		String sql = Constants.STRING_NULL;
		List<?> list = null;

		// Search by name
		if (search == null || search.equals(Constants.STRING_NULL)) {
			list = new ArrayList<Order>();
			list = ordersService.getAll();
		} else {
			sql = Constants.ADDRESS_LIKE + search
					+ Constants.STATUS_LIKE + search + Constants.BINARY;
			list = new ArrayList<OrderDto>();
			list = ordersService.getOrderSearchByPage(sql);
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
		HashMap<Integer, String> arrStatus = new HashMap<Integer, String>();
		arrStatus.put(1, Constants.STATUS_LISTODER_I);
		arrStatus.put(2, Constants.STATUS_LISTODER_II);
		arrStatus.put(3, Constants.STATUS_LISTODER_III);
		arrStatus.put(4, Constants.STATUS_LISTODER_IV);

		m.addObject(Constants.ADD_OBJECT_ARRSTATUS, arrStatus);
		m.addObject(Constants.SEARCH, search);
		m.addObject(Constants.NEXT, next);
		m.addObject(Constants.CURREN_PAGE, pageNumbers);
		m.addObject(Constants.BACK, back);
		m.addObject(Constants.TOTAL_PAGE, totalPage);
		m.addObject(Constants.ALL_ORDER, ordersService.getOrderByPage(pageNumbers, pageSize, sql));
		return m;
	}

	// Edit Order
	@GetMapping(Constants.URL_EDIT_ODER)
	public String editOrder(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id, ModelMap map) {
		Order order = ordersService.getOne(id);
		HashMap<Integer, String> arrStatus = new HashMap<Integer, String>();
		arrStatus.put(1, Constants.STATUS_LISTODER_I);
		arrStatus.put(2, Constants.STATUS_LISTODER_II);
		arrStatus.put(3, Constants.STATUS_LISTODER_III);
		arrStatus.put(4, Constants.STATUS_LISTODER_IV);
		if (order == null) {
			return Constants.REDIRECT_LISTODER_PAGE;
		}
		if (order != null) {
			map.addAttribute(Constants.ADD_ADDTRIBUTE_EDITORDER, order);
			map.addAttribute(Constants.ADD_OBJECT_ARRSTATUS, arrStatus);
		}
		return Constants.EDIT_ODER_PAGE;

	}

	@PostMapping(Constants.URL_EDIT_ODER)
	public ModelAndView editOrder(@PathVariable(Constants.ID_PRODUCT_ADMIN) Integer id, @RequestParam(Constants.USERNAME) String username,
			@RequestParam(Constants.STATUS) Integer status, @RequestParam(Constants.ADDRESS) String address,
			@RequestParam(Constants.ORDER_TOTAL_PRICE) double orderTotalPrice, @RequestParam(Constants.NAME) String name,
			@RequestParam(Constants.PHONE) String phone, @RequestParam(Constants.EMAIL) String email) {
		Order order = ordersService.getOne(id);
		try {
			order.setUser(userService.getOne(username));
			order.setStatus(status);
			order.setAddress(address);
			order.setOrderTotalPrice(orderTotalPrice);
			order.setName(name);
			order.setPhone(phone);
			order.setEmail(email);
			ordersService.updateOrder(order);
			return new ModelAndView(Constants.REDIRECT_LISTODER_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(Constants.REDIRECT_LISTODER_PAGE);
	}

	@GetMapping(Constants.URL_DELETE_ODER)
	public String deleteOrders(@PathVariable(Constants.ID_PRODUCT_ADMIN) int id, @PathVariable(Constants.CURREN_PAGE) int currenPage,
			RedirectAttributes ra) {
		String message = Constants.DELETE_FAIL;
		try {

			boolean result = ordersService.deleteOrder(id);
			message = result == true ? Constants.DELETE_SUCCESS : Constants.STRING_NULL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute(Constants.MESSAGE, message);
		return Constants.REDIRECT_LISTODER_PAGE + Constants.CONNECT_THE_URL + currenPage;
	}

	@Autowired
	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
