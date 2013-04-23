package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public interface IndexController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index();
	
	@RequestMapping(value = "/experiment", method = RequestMethod.GET)
	public ModelAndView experiment();
	
}
