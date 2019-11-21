package poly.bummshop.dto;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import poly.bummshop.entity.Order;

public class UserDto implements Serializable {

	private static final long serialVersionUID = 1L;

	@NotEmpty(message = "Username must be not blank")
	String username;

	@NotEmpty(message = "Name must be not blank")
	String name;
	@NotEmpty(message = "Gender must be not blank")
	String gender;
	@NotEmpty(message = "Age must be not blank")
	int age;
	@NotEmpty(message = "Phone must be not blank")
	String phone;
	@NotEmpty(message = "Address must be not blank")
	String address;
	@NotEmpty(message = "TypeUser must be not blank")
	String typeUser;
	@NotEmpty(message = "Email must be not blank")
	String email;

	private Order oder;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public Order getOder() {
		return oder;
	}

	public void setOder(Order oder) {
		this.oder = oder;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
