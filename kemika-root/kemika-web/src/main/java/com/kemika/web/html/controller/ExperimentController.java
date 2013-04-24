package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public interface ExperimentController {
	@RequestMapping(value = "/experiment", method = RequestMethod.GET)
	public ModelAndView experiment();
	
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public ModelAndView contactus();

	@RequestMapping(value = "/foodproductlist", method = RequestMethod.GET)
	public ModelAndView foodproductlist();
	
	@RequestMapping(value = "/cosmeticsproductlist", method = RequestMethod.GET)
	public ModelAndView cosmeticsproductlist();
}
