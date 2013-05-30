package com.kemika.web.html.controller.impl;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.commons.models.Message;
import com.kemika.commons.services.MessageService;
import com.kemika.web.dto.MessageForm;
import com.kemika.web.html.controller.MessageController;

@Component
public class MessageControllerImpl implements MessageController {

	private static Logger log = LoggerFactory.getLogger(MessageControllerImpl.class);
	
	@Resource
	private MessageService messages;
	
	@Override
	public ModelAndView messages() {
		
		return new ModelAndView("admin/messages")
			.addObject("messages", messages.findAll());
	}

	@Override
	public ModelAndView add() {
		return new ModelAndView("admin/messageform")
			.addObject("form", new MessageForm())
			.addObject("edit", false);
	}
	
	@Override
	public ModelAndView edit(@PathVariable Long id) {
		Message msg = messages.findOne(id);
		
		return new ModelAndView("admin/messageform")
			.addObject("form", new MessageForm(msg))
			.addObject("edit", true);
	}
	
	@Override
	public ModelAndView supdate(@Valid @ModelAttribute MessageForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			log.error("Binding errors in form: {}", form);
			return new ModelAndView("admin/messageform")
				.addObject("form", form);
		}
		
		messages.save(form.toMessage());
		
		return new ModelAndView("redirect:" + ROOT);
	}

	
	@Override
	public ModelAndView delete(@PathVariable Long id) {
		messages.delete(id);
		return new ModelAndView("redirect:" + ROOT);
	}
}
