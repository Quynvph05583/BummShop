package poly.bummshop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import poly.bummshop.common.Constants;

@Entity
@Table(name = Constants.ENTITY_CATEGORY_TABLE)
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = Constants.ENTITY_CATEGORY_ID_COLUMN)
	private int id;
	@Column(name = Constants.ENTITY_CATEGORY_NAME_COLUMN )
	private String name;

	public Category() {
	}

	public Category(int id, String name) {
		super();
		this.id = id;
		this.name = name;
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

}
