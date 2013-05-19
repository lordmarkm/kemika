package com.kemika.web.html.controller.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.commons.services.CategoryService;
import com.kemika.web.html.controller.IndexController;

@Component
public class IndexControllerImpl implements IndexController {

	@Resource
	private CategoryService cats;
	
	public ModelAndView index() {
		return new ModelAndView("splash2")
			.addObject("categories", cats.findAllWithProducts());
	}

}
