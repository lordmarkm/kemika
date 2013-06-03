package com.kemika.web.html.controller.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

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
		
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView product(@PathVariable String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
