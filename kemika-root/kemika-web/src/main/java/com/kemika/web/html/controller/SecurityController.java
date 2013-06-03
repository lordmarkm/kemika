package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public interface SecurityController {

	@RequestMapping("/login")
	public ModelAndView login();
	
}
