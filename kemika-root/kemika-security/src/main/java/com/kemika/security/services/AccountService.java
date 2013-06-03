package com.kemika.security.services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kemika.security.models.Account;

public interface AccountService extends JpaRepository<Account, Long> {

}
