package com.kemika.commons.services;

import org.springframework.transaction.annotation.Transactional;

import com.kemika.commons.models.Product;

public interface ProductServiceCustom {

	/**
	 * Also remove from category to avoid org.springframework.dao.DataIntegrityViolationException: integrity constraint violation: foreign key no action; FKB88A52AEED5B021C table: CATEGORY_PRODUCT; SQL [n/a]; constraint [FKB88A52AEED5B021C]; nested exception is org.hibernate.exception.ConstraintViolationException: integrity constraint violation: foreign key no action; FKB88A52AEED5B021C table: CATEGORY_PRODUCT
	 * @param id
	 */
	@Transactional
	void remove(Long id);
	
	@Transactional
	Product create(Product product, String categoryName);
	
	@Transactional
	void update(Long id, Product product);
	
	byte[] getImage(Long id);

}
