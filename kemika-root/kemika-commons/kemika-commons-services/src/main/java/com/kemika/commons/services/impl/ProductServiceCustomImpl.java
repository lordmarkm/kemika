package com.kemika.commons.services.impl;

import javax.annotation.Resource;

import org.apache.commons.lang.RandomStringUtils;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.ProductService;
import com.kemika.commons.services.ProductServiceCustom;
import com.kemika.commons.utils.NameUtil;

public class ProductServiceCustomImpl implements ProductServiceCustom {

	@Resource
	private CategoryService categories;
	
	@Resource
	private ProductService products;
	
	private void setUrlFragment(Product product) {
		String candidate = NameUtil.toUrlFragment(product.getName());
		while(products.findByUrlFragment(candidate) != null) {
			candidate += RandomStringUtils.randomAlphabetic(1);
		}
		product.setUrlFragment(candidate);
	}
	
	@Override
	public Product create(Product product, String categoryName) {
		setUrlFragment(product);
		Category category = categories.findByName(categoryName);
		category.getProducts().add(product);
		product.setCategory(category);
		return products.findByName(product.getName());
		//save not required here as category already cascades save to product
	}
	
}
