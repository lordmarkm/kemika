package com.kemika.web.html.controller.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

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
		
		return new ModelAndView("admin/admin")
		
			//distinct from NavbarInterceptor's "navcats" because of products fetch
			.addObject("categories", categories.findAllWithProducts());
		
	}

	@Override
	public ModelAndView newCategory() {
		return new ModelAndView("admin/newcategory")
			.addObject("form", new CategoryForm());
	}

	@Override
	public ModelAndView newCategory(@ModelAttribute @Valid CategoryForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("admin/newcategory")
				.addObject("form", form);
		}
		
		Category category = form.toCategory();
		categories.save(category);
		
		return new ModelAndView("redirect:/admin");
	}

	@Override
	public ModelAndView editCategory(@PathVariable Long id) {
		Category cat = categories.findOne(id);

		return new ModelAndView("admin/editcategory")
			.addObject("form", new CategoryForm(cat));
	}

	@Override
	public ModelAndView editCategory(@Valid @ModelAttribute CategoryForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("admin/editcategory")
				.addObject("form", form);
		}
		
		categories.update(form.getId(), form.toCategory());

		return new ModelAndView("redirect:/admin");
	}
	
	@Override
	public 	ModelAndView deleteCategory(@PathVariable Long id) {
		Category cat = categories.findOne(id);
		categories.delete(cat);
		
		return new ModelAndView("redirect:/admin");
	}

	
	@Override
	public ModelAndView newProduct() {
		
		List<String> catnames = categories.getNames();
		
		return new ModelAndView("admin/newproduct")
			.addObject("catnames", catnames)
			.addObject("form", new ProductForm());
	}

	@Override
	public ModelAndView newProduct(@ModelAttribute @Valid ProductForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("admin/newproduct")
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

		return new ModelAndView("admin/editproduct")
			.addObject("form", new ProductForm(product));
	}


}
