package com.kemika.security.services;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.services.config.CommonsServicesConfig;
import com.kemika.security.config.PersistenceConfig;
import com.kemika.security.models.Account;
import com.kemika.security.support.Roles;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class, PersistenceConfig.class})
public class AccountServiceTest {

	@Resource
	private AccountService service;
	
	@Before
	public void setup() {
		service.deleteAll();
	}
	
	@Test
	public void testSave() {
		Account account = new Account();
		account.setUsername("mark");
		account.setAuthorities(Roles.ROLE_ADMIN);
		service.save(account);
		assertEquals(1, service.findAll().size());
	}
	
}
