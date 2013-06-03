package com.kemika.web.html.controller.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.ProductService;
import com.kemika.web.html.controller.BrowseController;

@Component
public class BrowseControllerImpl implements BrowseController {

	@Resource
	private CategoryService cats;
	
	@Resource
	private ProductService products;
	
	@Override
	public ModelAndView category(@PathVariable String id) {
		Category category = cats.findOneWithProducts(Long.valueOf(id));
		ModelAndView mav = new ModelAndView("category")
			.addObject("category", category);
		return mav;
	}

	@Override
	public ModelAndView product(@PathVariable String id) {
		Product product = products.findOne(Long.valueOf(id));
		ModelAndView mav = new ModelAndView("product")
			.addObject("product", product);
		return mav;
	}

}
