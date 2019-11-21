package poly.bummshop.services.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import poly.bummshop.dto.ProductDto;
import poly.bummshop.entity.Product;
import poly.bummshop.repository.ProductRepository;
import poly.bummshop.services.ProductService;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	private ProductRepository productRepository;
	private EntityManager entityManager;

	@Override
	public List<Product> getAllProduct() {
		List<Product> productList = productRepository.findAll();
		return productList;
	}

	@Override
	public List<ProductDto> getProductByPage(int pageNumber, int pageSize, String search) {
		List<ProductDto> dtoList = new ArrayList<ProductDto>();
		String sql = "FROM Product ";
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
			List<Product> listResult = q.getResultList();

			for (Product product : listResult) {
				ProductDto dto = new ProductDto();
				dto.setId(product.getId());
				dto.setName(product.getName());
				dto.setPrice(product.getPrice());
				dto.setImage(product.getImage());
				dto.setDetail(product.getDetail());
				dto.setQuantity(product.getQuantity());
				dto.setCategory(product.getCategory());
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	
	@Override
	public List<ProductDto> getProductSearchByPage(String search) {
		List<ProductDto> dtoList = new ArrayList<ProductDto>();
		String sql = "FROM Product ";
		if(!search.isEmpty()) {
			sql += "where" + search;
		}
		try {
			Session session = (Session) entityManager.getDelegate();
			Query q = session.createQuery(sql);

			@SuppressWarnings("unchecked")
			List<Product> listResult = q.getResultList();

			for (Product product : listResult) {
				ProductDto dto = new ProductDto();
				dto.setId(product.getId());
				dto.setName(product.getName());
				dto.setPrice(product.getPrice());
				dto.setImage(product.getImage());
				dto.setDetail(product.getDetail());
				dto.setQuantity(product.getQuantity());
				dto.setCategory(product.getCategory());
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}

	@Override
	public Product createProduct(Product product) {
		return productRepository.save(product);
	}

	@Override
	public boolean updateProduct(Product product) {
		boolean result = false;
		try {
			productRepository.save(product);
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean deleteProduct(Integer id) {
		if (id != null) {
			productRepository.deleteById(id);
			return true;
		}
		return false;
	}

	@Override
	public Product getOne(Integer id) {
		return productRepository.getOne(id);
	}

	@Autowired
	public void setProductRepository(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}

	@Autowired
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
