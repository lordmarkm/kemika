package com.kemika.web.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.core.style.ToStringCreator;

import com.kemika.commons.models.Product;

public class ProductForm {
	
	@NotEmpty(message = "Product must have a name")
	private String name;
	
	@NotEmpty(message = "Product must have a description")
	private String description;

	@NotEmpty(message = "Product must have a category")
	private String category;
	
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
	
}
