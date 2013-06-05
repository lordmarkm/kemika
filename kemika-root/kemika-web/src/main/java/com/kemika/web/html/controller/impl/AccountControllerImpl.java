package com.kemika.web.html.controller.impl;

import java.security.Principal;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.security.models.Account;
import com.kemika.security.services.AccountService;
import com.kemika.web.dto.AccountForm;
import com.kemika.web.html.controller.AccountController;
import com.kemika.web.support.AccountFormValidator;

@Component
public class AccountControllerImpl implements AccountController {

	private static Logger log = LoggerFactory.getLogger(AccountControllerImpl.class);
	
	@Resource
	private AccountService accounts;
	
	@Resource
	private AccountFormValidator validator;
	
	@Override
	public ModelAndView account(Principal principal) {
		Account account = accounts.findByUsername(principal.getName());
		AccountForm form = new AccountForm(account);
		log.info("Returning account page. Form: {}", form);
		ModelAndView mav = new ModelAndView("account")
			.addObject("form", form);

		return mav;
	}
	
	@Override
	public ModelAndView update(@Valid @ModelAttribute("form") AccountForm form, BindingResult result) {
		log.info("Received update request: {}", form);
		
		if(result.hasErrors()) {
			return new ModelAndView("account")
				.addObject("form", form);
		}
		
		accounts.update(form.getAccount());
		return new ModelAndView("redirect:/" + AccountController.ROOT);
	}

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }
}