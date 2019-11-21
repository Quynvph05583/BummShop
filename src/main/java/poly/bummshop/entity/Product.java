package poly.bummshop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import poly.bummshop.common.Constants;

import javax.persistence.Column;

@Entity
@Table(name = Constants.ENTITY_PRODUCT_TABLE)
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = Constants.ENTITY_PRODUCT_ID_COLUMN)
	private int id;
	@Column(name = Constants.ENTITY_PRODUCT_NAME_COLUMN)
	private String name;
	@Column(name = Constants.ENTITY_PRODUCT_PRICE_COLUMN)
	private double price;
	@Column(name = Constants.ENTITY_PRODUCT_IMAGE_COLUMN)
	private String image;
	@Column(name = Constants.ENTITY_PRODUCT_DETAIL_COLUMN)
	private String detail;
	@Column(name = Constants.ENTITY_PRODUCT_QUANTITY_COLUMN)
	private Integer quantity;
	@ManyToOne
	@JoinColumn(name = Constants.ENTITY_CATEGORY_ID_COLUMN)
	private Category category;
	

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int id, String name, double price, String image, String detail, Integer quantity, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.image = image;
		this.detail = detail;
		this.quantity = quantity;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
