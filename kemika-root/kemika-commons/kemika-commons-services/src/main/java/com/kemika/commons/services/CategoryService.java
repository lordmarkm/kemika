package com.kemika.commons.services;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.kemika.commons.models.Category;

/**
 * @author Mark
 */
public interface CategoryService extends PagingAndSortingRepository<Category, Long>, CategoryServiceCustom {

	Category findByName(String categoryName);
	
	@Query("select name from Category")
	List<String> getNames();

	@Query("select distinct c from Category c left join fetch c.products")
	List<Category> findAllWithProducts();

	Category findByUrlFragment(String urlFragment);

}
