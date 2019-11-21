package poly.bummshop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.bummshop.common.Constants;
import poly.bummshop.entity.Cart;
import poly.bummshop.entity.Product;
import poly.bummshop.services.CategoryService;
import poly.bummshop.services.ProductService;

@Controller
public class CartControllerClient {

	private ProductService productService;
	private CategoryService categoryService;

	@GetMapping(Constants.URL_CART)
	public String getALl(ModelMap map) {
		map.addAttribute(Constants.CATEGORY, categoryService.getAll());
		return Constants.CART_CLIENT_PAGE;
	}

	@PostMapping(value = Constants.URL_ADD_TO_CART)
	public String add(ModelMap map, HttpSession session, @PathVariable(Constants.PRODUCT_ID_CART) Integer productId,
			@RequestParam(Constants.QUANTITY) Integer quantity) {
		@SuppressWarnings(Constants.UNCHECK)
		ArrayList<Cart> arrList = (ArrayList<Cart>) session.getAttribute(Constants.SESSION_LIST_CART);
		if (arrList == null) {
			arrList = new ArrayList<Cart>();
		}
		Product product = productService.getOne(productId);
		boolean bought = true;
		for (Cart cart : arrList) {
			if (cart.getProduct().getId() == productId) {
				cart.setQuantity(cart.getQuantity() + quantity);
				bought = false;
			}
		}
		if (bought) {
			Cart cart = new Cart();
			cart.setProduct(product);
			cart.setQuantity(quantity);
			arrList.add(cart);
		}
		double total = 0;
		for (Cart cart : arrList) {
			total += (cart.getProduct().getPrice() * cart.getQuantity());
		}
		session.setAttribute(Constants.SESSION_LIST_CART, arrList);
		session.setAttribute(Constants.SESSION_TOTAL_PRICE, total);
		return Constants.REDIRECT_CART_CLIENT_PAGE;
	}

	@GetMapping(value = Constants.URL_DELETE_CART)
	public String delete(ModelMap map, HttpSession session,
			@PathVariable(Constants.PRODUCT_ID_CART) Integer productId) {
		@SuppressWarnings(Constants.UNCHECK)
		ArrayList<Cart> arrList = (ArrayList<Cart>) session.getAttribute(Constants.SESSION_LIST_CART);
		if (arrList == null) {
			arrList = new ArrayList<Cart>();
		}
		Cart cartDelete = null;
		for (Cart cart : arrList) {
			if (cart.getProduct().getId() == productId) {
				cartDelete = cart;
			}
		}
		if (cartDelete != null) {
			arrList.remove(cartDelete);
		}
		double total = 0;
		for (Cart cart : arrList) {
			total += (cart.getProduct().getPrice() * cart.getQuantity());
		}

		session.setAttribute(Constants.SESSION_LIST_CART, arrList);
		session.setAttribute(Constants.SESSION_TOTAL_PRICE, total);
		return Constants.REDIRECT_CART_CLIENT_PAGE;
	}

	@Autowired
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@Autowired
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

}
