package poly.bummshop.services.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import poly.bummshop.dto.OrderDto;
import poly.bummshop.entity.Order;
import poly.bummshop.repository.OrdersRepository;
import poly.bummshop.services.OrdersService;

@Service
@Transactional
public class OrdersServiceImpl implements OrdersService {

	private OrdersRepository ordersRepository;
	private EntityManager entityManager;

	@Override
	public List<Order> getAll() {
		return ordersRepository.findAll();
	}

	@Override
	public List<OrderDto> getOrderByPage(int pageNumber, int pageSize, String search) {
		List<OrderDto> dtoList = new ArrayList<OrderDto>();
		String sql = "FROM Order ";
		if (!search.isEmpty()) {
			sql += "where" + search;
		}
		try {
			int start = (pageNumber - 1) * pageSize;
			Session session = (Session) entityManager.getDelegate();
			Query q = session.createQuery(sql);
			q.setFirstResult(start);
			q.setMaxResults(pageSize);

			@SuppressWarnings("unchecked")
			List<Order> listResult = q.getResultList();

			for (Order order : listResult) {
				OrderDto dto = new OrderDto();
				dto.setId(order.getId());
				dto.setAddress(order.getAddress());
				dto.setStatus(order.getStatus());
				dto.setOrderDate(order.getOrderDate());
				dto.setOrderTotalPrice(order.getOrderTotalPrice());
				dto.setName(order.getName());
				dto.setPhone(order.getPhone());
				dto.setEmail(order.getEmail());
				dto.setUser(order.getUser());
				dtoList.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}

	@Override
	public List<OrderDto> getOrderSearchByPage(String search) {
		List<OrderDto> dtoList = new ArrayList<OrderDto>();
		String sql = "FROM Order ";
		if (!search.isEmpty()) {
			sql += "where" + search;
		}
		try {
			Session session = (Session) entityManager.getDelegate();
			Query q = session.createQuery(sql);

			@SuppressWarnings("unchecked")
			List<Order> listResult = q.getResultList();

			for (Order order : listResult) {
				OrderDto dto = new OrderDto();
				dto.setId(order.getId());
				dto.setAddress(order.getAddress());
				dto.setStatus(order.getStatus());
				dto.setOrderDate(order.getOrderDate());
				dto.setOrderTotalPrice(order.getOrderTotalPrice());
				dto.setUser(order.getUser());
				dtoList.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}

	@Override
	public Order createOrder(Order order) {
		return ordersRepository.save(order);
	}

	@Override
	public Order getOne(Integer id) {
		return ordersRepository.getOne(id);
	}

	@Override
	public boolean updateOrder(Order order) {
		boolean result = false;
		try {
			ordersRepository.save(order);
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean deleteOrder(Integer id) {
		if (id != null) {
			ordersRepository.deleteById(id);
			return true;
		}
		return false;
	}

	@Autowired
	public void setOrdersRepository(OrdersRepository ordersRepository) {
		this.ordersRepository = ordersRepository;
	}

	@Autowired
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
