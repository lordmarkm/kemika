package com.kemika.security.services;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.FilterChainProxy;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kemika.commons.services.config.CommonsServicesConfig;
import com.kemika.security.config.SecurityConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class, SecurityConfig.class})
@WebAppConfiguration
public class SecurityConfigTest {
    
	@Autowired
    private FilterChainProxy springSecurityFilterChain;
    
	@Test
	public void configLoads() {
	}
	
}
