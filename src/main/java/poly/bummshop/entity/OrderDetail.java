package poly.bummshop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import poly.bummshop.common.Constants;

@Entity
@Table(name = Constants.ENTITY_ORDERDETAIL_TABLE)
public class OrderDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = Constants.ENTITY_ORDERDETAIL_ID_COLUMN)
	private int id;
	@ManyToOne
	@JoinColumn(name = Constants.ENTITY_ORDER_ID_COLUMN)
	private Order order;
	@ManyToOne
	@JoinColumn(name = Constants.ENTITY_PRODUCT_ID_COLUMN)
	private Product product;
	private int quantity;

	public OrderDetail() {
	}

	public OrderDetail(Order order, Product product, int quantity) {
		super();
		this.order = order;
		this.product = product;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
