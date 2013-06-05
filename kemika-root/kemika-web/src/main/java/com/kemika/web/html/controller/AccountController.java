package com.kemika.web.html.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.web.dto.AccountForm;

@Controller
@RequestMapping(AccountController.ROOT)
public interface AccountController {

	public static final String ROOT = "account";
	
	@RequestMapping(method = RequestMethod.GET)
	ModelAndView account(Principal principal);

	@RequestMapping(method = RequestMethod.POST)
	ModelAndView update(AccountForm form, BindingResult result);
		
}
