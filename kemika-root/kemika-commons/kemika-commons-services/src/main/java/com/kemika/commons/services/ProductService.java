package com.kemika.commons.services;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.kemika.commons.models.Product;

/**
 * @author Mark
 */
public interface ProductService extends PagingAndSortingRepository<Product, Long>, ProductServiceCustom {

	Product findByName(String string);
	Product findByUrlFragment(String urlFragment);

}
