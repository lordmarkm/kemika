package com.kemika.security.services.impl;

import javax.annotation.Resource;

import com.kemika.security.models.Account;
import com.kemika.security.services.AccountService;
import com.kemika.security.services.AccountServiceCustom;

public class AccountServiceCustomImpl implements AccountServiceCustom {

	@Resource
	private AccountService service;
	
	@Override
	public Account update(Account account) {
		Account old = service.findOne(account.getId());
		old.setUsername(account.getUsername());
		old.setPassword(account.getPassword());
		return old;
	}

}
