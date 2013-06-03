package com.kemika.web.html.controller.impl;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.web.html.controller.SecurityController;

@Component
public class SecurityControllerImpl implements SecurityController {

	@Override
	public ModelAndView login() {
		return new ModelAndView("login");
	}

}
