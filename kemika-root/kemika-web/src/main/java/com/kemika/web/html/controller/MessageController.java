package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.web.dto.MessageForm;

@Controller
@RequestMapping(MessageController.ROOT)
public interface MessageController {

	String ROOT = "/admin/messages";
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView messages();

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	ModelAndView add();
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	ModelAndView edit(Long id);
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	ModelAndView delete(Long id);
	
	@RequestMapping(value = "/supdate", method = RequestMethod.POST)
	public ModelAndView supdate(MessageForm form, BindingResult result);

	
}
