package com.kemika.commons.services;

import org.springframework.transaction.annotation.Transactional;

import com.kemika.commons.models.Product;

public interface ProductServiceCustom {

	@Transactional
	Product create(Product product, String categoryName);
	byte[] getImage(Long id);

}
