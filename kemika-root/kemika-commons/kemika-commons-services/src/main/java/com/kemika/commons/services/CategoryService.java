package com.kemika.commons.services;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

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
	
	@Query("select c from Category c left join fetch c.products where c.id = :id")
	Category findOneWithProducts(@Param("id") Long id);

	Category findByUrlFragment(String urlFragment);

}
