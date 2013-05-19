package com.kemika.commons.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="category")
public class Category extends AbstractEntity {

	@OneToOne(cascade = CascadeType.ALL)
	private Image image;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Product> products;

	public List<Product> getProducts() {
		if(null == products) {
			this.products = new ArrayList<Product>();
		}
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Image getImage() {
		return image;
	}

	public void setImage(Image image) {
		this.image = image;
	}
	
	
}
