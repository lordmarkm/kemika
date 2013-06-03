package com.kemika.commons.services.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.commons.lang.RandomStringUtils;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Image;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.CategoryServiceCustom;
import com.kemika.commons.services.ImageService;
import com.kemika.commons.utils.NameUtil;

public class CategoryServiceCustomImpl implements CategoryServiceCustom {

	@Resource
	private CategoryService cats;
	
	@Resource
	private ImageService images;
	
	@PersistenceContext
	private EntityManager em;
	
	private void setUrlFragment(Category category) {
		String candidate = NameUtil.toUrlFragment(category.getName());
		while(cats.findByUrlFragment(candidate) != null) {
			candidate += RandomStringUtils.randomAlphabetic(1);
		}
		category.setUrlFragment(candidate);
	}
	
	@Override
	public Category create(Category category) {
		setUrlFragment(category);
		return cats.save(category);
	}
	
	@Override
	public void update(Long id, Category updated) {
		Category old = cats.findOne(id);
		old.setName(updated.getName());
		old.setDescription(updated.getDescription());
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public byte[] getImage(Long id) {
		List<Image> img = (List<Image>) em.createQuery("select c.image from Category c where c.id = :id")
			.setParameter("id", id)
			.getResultList();
		
		return img.size() == 0 ? null : img.get(0).getImage();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Image> getImages() {
		List<Image> images = em.createQuery("select c.image from Category c")
				.getResultList();
		return images;
	}

	@Override
	public void saveImage(Long id, byte[] img) {
		Image newImg = new Image();
		newImg.setImage(img);
		
		Category cat = cats.findOne(id);
		if(null != cat.getImage()) {
			//workaround for @OneToOne(orphanRemoval=true) not working properly when replacing
			images.delete(cat.getImage()); 
		}
		cat.setImage(newImg);
	}

}
