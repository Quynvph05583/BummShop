package poly.bummshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import poly.bummshop.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

}
