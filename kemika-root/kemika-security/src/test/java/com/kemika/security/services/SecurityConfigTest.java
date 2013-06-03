package com.kemika.security.services;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.services.config.CommonsServicesConfig;
import com.kemika.security.config.SecurityConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class, SecurityConfig.class})
public class SecurityConfigTest {

	@Test
	public void configLoads() {
		//
	}
	
}
