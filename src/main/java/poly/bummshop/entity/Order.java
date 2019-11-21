package poly.bummshop.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import poly.bummshop.common.Constants;

@Entity
@Table(name = Constants.ENTITY_ORDER_TABLE)
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = Constants.ENTITY_ORDER_ID_COLUMN)
	private int id;
	@Column(name = Constants.ENTITY_ORDER_ADDRESS_COLUMN)
	private String address;
	@Column(name = Constants.ENTITY_ORDER_STATUS_COLUMN)
	private Integer status;
	@Column(name = Constants.ENTITY_ORDER_DATE_COLUMN)
	@CreationTimestamp
	private Timestamp orderDate;
	@Column(name = Constants.ENTITY_ORDER_TOTAL_PRICE_COLUMN)
	private double orderTotalPrice;
	@Column(name = Constants.ENTITY_ORDER_NAME_COLUMN)
	private String name;
	@Column(name = Constants.ENTITY_ORDER_PHONE_COLUMN)
	private String phone;
	@Column(name = Constants.ENTITY_ORDER_EMAIL_COLUMN)
	private String email;
	@ManyToOne
	@JoinColumn(name = Constants.USERNAME)
	private User user;
	@OneToMany(mappedBy = Constants.ENTITY_ORDER_MAPBY)
	private List<OrderDetail> orderDetails;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(String address, Integer status, Timestamp orderDate, double orderTotalPrice, String name, String phone,
			String email, User user, List<OrderDetail> orderDetails) {
		super();
		this.address = address;
		this.status = status;
		this.orderDate = orderDate;
		this.orderTotalPrice = orderTotalPrice;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.user = user;
		this.orderDetails = orderDetails;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public double getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(double orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	


}
