package poly.bummshop.services;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import poly.bummshop.dto.UserDto;
import poly.bummshop.entity.User;

public interface UserService {
	Logger logger = LogManager.getLogger(UserService.class);

	// Check login
	User login(String username, String password);

	// Get user by id
	User getOne(String username);

	// List all
	List<User> getAll();

	// List all by page
	List<UserDto> getUserByPage(int pageNumber, int pageSize, String search);

	// Search
	public List<UserDto> getUserSearchByPage(String search);

	// Create user
	User CreateUser(User user);

	// Update user
	boolean updateUser(User user, String username);

	// Delete user
	boolean deleteUser(String username);

}
