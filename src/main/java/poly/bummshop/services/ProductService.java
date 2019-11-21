package poly.bummshop.services;

import java.util.List;

import poly.bummshop.dto.ProductDto;
import poly.bummshop.entity.Product;

public interface ProductService {
	
	// list all
	List<Product> getAllProduct();
	// list by page
	public List<ProductDto> getProductByPage(int pageNumber, int pageSize, String search);
	// Search
	public List<ProductDto> getProductSearchByPage(String search);
	// create
	Product createProduct(Product product);
	// get one
	Product getOne(Integer id);
	// update 
	boolean updateProduct(Product product);
	// delete
	boolean deleteProduct(Integer id);
}
