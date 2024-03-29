package poly.bummshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import poly.bummshop.entity.Order;

@Repository
public interface OrdersRepository extends JpaRepository<Order, Integer> {

}
