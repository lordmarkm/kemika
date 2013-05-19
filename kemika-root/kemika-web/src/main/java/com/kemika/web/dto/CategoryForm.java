package com.kemika.web.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.core.style.ToStringCreator;

import com.kemika.commons.models.Category;

public class CategoryForm {
	
	private Long id;
	
	@NotEmpty(message = "Category must have a name")
	private String name;
	
	@NotEmpty(message = "Category must have a description")
	private String description;

	public CategoryForm() {
		//
	}
	
	public CategoryForm(Category cat) {
		this.id = cat.getId();
		this.name = cat.getName();
		this.description = cat.getDescription();
	}

	public Category toCategory() {
		Category c = new Category();
		c.setName(name);
		c.setDescription(description);
		return c;
	}
	
	@Override
	public String toString() {
		return new ToStringCreator(this)
			.append("name", name)
			.append("description", description)
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
