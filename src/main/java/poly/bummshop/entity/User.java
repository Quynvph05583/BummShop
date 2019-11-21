package poly.bummshop.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import poly.bummshop.common.Constants;

@Entity
@Table(name = Constants.ENTITY_USER_TABLE)
public class User {

	@Id
	@Column(name = Constants.ENTITY_USERNAME_COLUMN)
	private String username;
	@Column(name = Constants.ENTITY_PASSWORD_COLUMN)
	private String password;
	@Column(name = Constants.ENTITY_NAME_COLUMN)
	private String name;
	@Column(name = Constants.ENTITY_GENDER_COLUMN)
	private String gender;
	@Column(name = Constants.ENTITY_AGE_COLUMN)
	private int age;
	@Column(name = Constants.ENTITY_PHONE_COLUMN)
	private String phone;
	@Column(name = Constants.ENTITY_ADDRESS_COLUMN)
	private String address;
	@Column(name = Constants.ENTITY_TYPE_USER_COLUMN)
	private String typeUser;
	@Column(name = Constants.ENTITY_EMAIL_COLUMN)
	private String email;
	@OneToMany(mappedBy = Constants.ENTITY_USER_TABLE)
	private List<Order> orders;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String username, String password, String name, String gender, int age, String phone, String address,
			String typeUser, String email) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
		this.address = address;
		this.typeUser = typeUser;
		this.email = email;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTypeUser() {
		return typeUser;
	}

	public void setTypeUser(String typeUser) {
		this.typeUser = typeUser;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
