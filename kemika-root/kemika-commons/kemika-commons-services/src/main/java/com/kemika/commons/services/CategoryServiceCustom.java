package com.kemika.commons.services;

import org.springframework.transaction.annotation.Transactional;

import com.kemika.commons.models.Category;

public interface CategoryServiceCustom {
	
	@Transactional
	void update(Long id, Category category);
	
}
