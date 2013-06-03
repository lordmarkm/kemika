package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public interface BrowseController {

	@RequestMapping("/category/{id}")
	ModelAndView category(String id);
	
	@RequestMapping("/product/{id}")
	ModelAndView product(String id);
	
}
