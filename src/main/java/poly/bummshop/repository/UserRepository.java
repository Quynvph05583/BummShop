package poly.bummshop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import poly.bummshop.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
	
	@Query("SELECT a FROM User a WHERE a.username = ?1 AND a.password = ?2")
	User login(String username, String password);
	
	@Query(value = "SELECT p FROM User p  WHERE p.name like %?1%")
    Page<User> searchProductByName(String name, Pageable pageable);
}
