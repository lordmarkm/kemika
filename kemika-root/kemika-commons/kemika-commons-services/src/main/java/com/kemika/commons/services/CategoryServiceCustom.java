package com.kemika.commons.services;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Image;

public interface CategoryServiceCustom {

	@Transactional
	void update(Long id, Category category);

	byte[] getImage(Long id);

	List<Image> getImages();

}
