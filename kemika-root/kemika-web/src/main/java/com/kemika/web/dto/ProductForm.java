package com.kemika.web.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.core.style.ToStringCreator;

import com.kemika.commons.models.Product;

public class ProductForm {
	
	private Long id;
	
	@NotEmpty(message = "Product must have a name")
	private String name;
	
	@NotEmpty(message = "Product must have a description")
	private String description;

	@NotEmpty(message = "Product must have a category")
	private String category;
	
	public ProductForm() {
		//
	}
	
	public ProductForm(Product product) {
		this.id = product.getId();
		this.name = product.getName();
		this.description = product.getDescription();
		this.category = product.getCategory().getName();
	}
	
	public Product toProduct() {
		Product product = new Product();
		product.setName(name);
		product.setDescription(description);
		return product;
	}
	
	@Override
	public String toString() {
		return new ToStringCreator(this)
			.append("name", name)
			.append("description", description)
			.append("category", category)
			.toString();
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
