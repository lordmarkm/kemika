package com.kemika.web.html.controller.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.commons.lang.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.ProductService;
import com.kemika.web.dto.CategoryForm;
import com.kemika.web.dto.ProductForm;
import com.kemika.web.html.controller.AdminController;

@Component
public class AdminControllerImpl implements AdminController {

	static Logger log = LoggerFactory.getLogger(AdminControllerImpl.class);
	
	@Resource
	private CategoryService categories;
	
	@Resource
	private ProductService products;
	
	@Override
	public ModelAndView dashboard() {
		
		return new ModelAndView("admin")
			.addObject("categories", categories.findAllWithProducts());
		
	}

	@Override
	public ModelAndView newCategory() {
		return new ModelAndView("newcategory")
			.addObject("form", new CategoryForm());
	}

	@Override
	public ModelAndView newCategory(@ModelAttribute @Valid CategoryForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("newcategory")
				.addObject("form", form);
		}
		
		Category category = form.toCategory();
		categories.save(category);
		
		return new ModelAndView("redirect:/admin");
	}

	@Override
	public ModelAndView editCategory(@PathVariable Long id) {
		Category cat = categories.findOne(id);
		Validate.notNull(cat);

		return new ModelAndView("editcategory")
			.addObject("form", new CategoryForm(cat));
	}

	@Override
	public ModelAndView editCategory(@Valid @ModelAttribute CategoryForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("editcategory")
				.addObject("form", form);
		}
		Validate.notNull(form.getId());
		
		categories.update(form.getId(), form.toCategory());

		return new ModelAndView("redirect:/admin");
	}
	
	@Override
	public 	ModelAndView deleteCategory(@PathVariable Long id) {
		Category cat = categories.findOne(id);
		Validate.notNull(cat);
		categories.delete(cat);
		
		return new ModelAndView("redirect:/admin");
	}

	
	@Override
	public ModelAndView newProduct() {
		
		List<String> catnames = categories.getNames();
		
		return new ModelAndView("newproduct")
			.addObject("catnames", catnames)
			.addObject("form", new ProductForm());
	}

	@Override
	public ModelAndView newProduct(@ModelAttribute @Valid ProductForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("newproduct")
				.addObject("form", form)
				.addObject("catnames", categories.getNames())
				.addAllObjects(result.getModel());
		}
		
		Product product = form.toProduct();
		products.save(product, form.getCategory());
		
		return new ModelAndView("redirect:/admin");
	}
	
	@Override
	public 	ModelAndView editProduct(@PathVariable Long id) {
		Product product = products.findOne(id);
		Validate.notNull(product);

		return new ModelAndView("editproduct")
			.addObject("form", new ProductForm(product));
	}


}
