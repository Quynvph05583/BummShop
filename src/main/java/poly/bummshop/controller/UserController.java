package poly.bummshop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import poly.bummshop.common.Constants;
import poly.bummshop.entity.User;
import poly.bummshop.services.UserService;

@Controller
public class UserController {

	private UserService userService;

	// Get login
	@GetMapping(Constants.URL_LOGIN)
	public String showLoginPage() {
		return Constants.LOGIN_PAGE;
	}

	// Get logout
	@GetMapping(Constants.URL_LOGOUT)
	public String logout(HttpSession session) {
		session.setAttribute(Constants.SESSION_USER, null);
		session.removeAttribute(Constants.SESSION_USER);
		return Constants.REDIRECT_HOME;
	}

	// Get register
	@GetMapping(Constants.URL_REGISTER)
	public String register() {
		return Constants.REGISTER_PAGE;
	}

	// login page
	@PostMapping(Constants.URL_LOGIN)
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session,
			RedirectAttributes ra) {
		User user = userService.login(username, password);
		if (user == null) {
			ra.addFlashAttribute(Constants.MESSAGE, Constants.LOGIN_FAIL);
			return Constants.REDIRECT_LOGIN;
		}
		if (user.getTypeUser().equals(Constants.ROLE_KH)) {
			session.setAttribute(Constants.SESSION_USER, user);
			ra.addFlashAttribute(Constants.MESSAGE,
					Constants.LOGIN_KH_SUCCESS + user.getName() + Constants.LOGIN_KH_ADMIN_SUCCESS);
			return Constants.REDIRECT_HOME;
		}
		session.setAttribute(Constants.SESSION_USER, user);
		ra.addFlashAttribute(Constants.MESSAGE,
				Constants.LOGIN_ADMIN_SUCCESS + user.getName() + Constants.LOGIN_KH_ADMIN_SUCCESS);
		return Constants.REDIRECT_ADMIN_HOME;
	}

	// Register User
	@PostMapping(Constants.URL_REGISTER)
	public String register(@ModelAttribute User user, RedirectAttributes ra) {
		user.setTypeUser(Constants.ROLE_KH);
		User users = userService.CreateUser(user);
		if (users != null) {
			ra.addFlashAttribute(Constants.ADDTRIBUTE_USER, new User());
			ra.addFlashAttribute(Constants.MESSAGE, Constants.REGISTE_SUCCESS);
			return Constants.REDIRECT_LOGIN;
		} else {
			ra.addFlashAttribute(Constants.ADDTRIBUTE_USER, user);
			ra.addFlashAttribute(Constants.MESSAGE,
					Constants.REGISTE_FAIL + user.getUsername() + Constants.REGISTE_FAIL2);
			return Constants.REDIRECT_REGISTER;
		}
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
