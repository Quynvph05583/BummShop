package poly.bummshop.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import poly.bummshop.common.BaseUtils;
import poly.bummshop.dto.UserDto;
import poly.bummshop.entity.User;
import poly.bummshop.repository.UserRepository;
import poly.bummshop.services.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;

	private EntityManager entityManager;

	@Override
	public User login(String username, String password) {
		
		password = BaseUtils.encryptPassword(password);
		User user = userRepository.login(username, password);
		if (user == null)
			return null;
		return user;
	}

	@Override
	public User getOne(String username) {
		Optional<User> user = userRepository.findById(username);
		if (!user.isPresent())
			return null;
		return user.get();
	}

	@Override
	public User CreateUser(User user) {
		if (getOne(user.getUsername()) != null)
			return null;
		user.setPassword(BaseUtils.encryptPassword(user.getPassword()));
		user = userRepository.save(user);
		return user;
	}

	@Override
	public boolean updateUser(User user, String username) {
		if (getOne(username) == null)
			return false;
		return userRepository.save(user) != null;
	}
	
	@Override
	public boolean deleteUser(String username) {
		if(username != null) {
			 userRepository.deleteById(username);
			return true;
		}
		return false;
		
	}

	@Override
	public List<User> getAll() {
		return userRepository.findAll();
	}

	@Override
	public List<UserDto> getUserByPage(int pageNumber, int pageSize, String search) {
		List<UserDto> dtoList = new ArrayList<UserDto>();
		String sql = "FROM User ";
		if(!search.isEmpty()) {
			sql += "where" + search;
		}
		try {
			int start = (pageNumber - 1) * pageSize;
			Session session = (Session) entityManager.getDelegate();
			Query q = session.createQuery(sql);
			q.setFirstResult(start);
			q.setMaxResults(pageSize);

			@SuppressWarnings("unchecked")
			List<User> listResult = q.getResultList();

			for (User user : listResult) {
				UserDto dto = new UserDto();
				dto.setUsername(user.getUsername());
				dto.setName(user.getName());
				dto.setGender(user.getGender());
				dto.setAge(user.getAge());
				dto.setPhone(user.getPhone());
				dto.setAddress(user.getAddress());
				dto.setTypeUser(user.getTypeUser());
				dto.setEmail(user.getEmail());
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}

	@Override
	public List<UserDto> getUserSearchByPage(String search) {
		List<UserDto> dtoList = new ArrayList<UserDto>();
		String sql = "FROM User ";
		if(!search.isEmpty()) {
			sql += "where" + search;
		}
		try {
			Session session = (Session) entityManager.getDelegate();
			Query q = session.createQuery(sql);

			@SuppressWarnings("unchecked")
			List<User> listResult = q.getResultList();

			for (User user : listResult) {
				UserDto dto = new UserDto();
				dto.setUsername(user.getUsername());
				dto.setName(user.getName());
				dto.setGender(user.getGender());
				dto.setAge(user.getAge());
				dto.setPhone(user.getPhone());
				dto.setAddress(user.getAddress());
				dto.setTypeUser(user.getTypeUser());
				dto.setEmail(user.getEmail());
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}

	@Autowired
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Autowired
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
