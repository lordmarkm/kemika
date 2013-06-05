package com.kemika.security.services;

import org.springframework.transaction.annotation.Transactional;

import com.kemika.security.models.Account;

public interface AccountServiceCustom {
	/**
	 * @param account - must have id
	 * @return
	 */
	@Transactional
	Account update(Account account);
}
