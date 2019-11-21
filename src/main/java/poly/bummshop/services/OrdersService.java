package poly.bummshop.services;

import java.util.List;

import poly.bummshop.dto.OrderDto;
import poly.bummshop.entity.Order;

public interface OrdersService {

	// List all orders
	List<Order> getAll();

	// List by page
	public List<OrderDto> getOrderByPage(int pageNumber, int pageSize, String search);

	// Search
	public List<OrderDto> getOrderSearchByPage(String search);

	// create
	Order createOrder(Order order);

	// get one
	Order getOne(Integer id);

	// update
	boolean updateOrder(Order order);

	// delete
	boolean deleteOrder(Integer id);

}
