package com.kemika.commons.services.impl;

import javax.annotation.Resource;

import com.kemika.commons.models.Category;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.CategoryServiceCustom;

public class CategoryServiceCustomImpl implements CategoryServiceCustom {

	@Resource
	private CategoryService service;
	
	@Override
	public void update(Long id, Category updated) {
		Category old = service.findById(id);
		old.setName(updated.getName());
		old.setDescription(updated.getDescription());
	}

}
