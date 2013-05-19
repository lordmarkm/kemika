package com.kemika.commons.services.impl;

import javax.annotation.Resource;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.ProductService;
import com.kemika.commons.services.ProductServiceCustom;

public class ProductServiceCustomImpl implements ProductServiceCustom {

	@Resource
	private CategoryService categories;
	
	@Resource
	private ProductService products;
	
	@Override
	public void save(Product product, String categoryName) {
		Category category = categories.findByName(categoryName);
		category.getProducts().add(product);
		product.setCategory(category);
	}
	
}
