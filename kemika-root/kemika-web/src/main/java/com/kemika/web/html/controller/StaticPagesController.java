package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StaticPagesController {

	@RequestMapping(value = "/clients", method = RequestMethod.GET)
	public ModelAndView clients() {
		return new ModelAndView("clients");
	}
	
}
