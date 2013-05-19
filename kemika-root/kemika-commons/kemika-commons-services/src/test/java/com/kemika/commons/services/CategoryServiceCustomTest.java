package com.kemika.commons.services;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.models.Category;
import com.kemika.commons.services.config.CommonsServicesConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class})
public class CategoryServiceCustomTest {

	@Resource
	private CategoryService service;
	
	@Before
	public void setup() {
		service.deleteAll();
	}
	
	@After
	public void cleanup() {
		service.deleteAll();
	}
	
	private Category sari() {
		Category c = new Category();
		c.setName("Sari sari store products");
		c.setDescription("Sari sari stuff");
		return c;
	}
	
	private Category cars() {
		Category c = new Category();
		c.setName("Cars");
		c.setDescription("Four-wheeled vehicles");
		return c;
	}
	
	@Test
	public void testUpdate() {
		Category sari = sari();
		Category cars = cars();
		
		Long sariId = service.save(sari()).getId();
		
		Category old = service.findOne(sariId);
		assertEquals(sari.getName(), old.getName());
		assertEquals(sari.getDescription(), old.getDescription());
		
		service.update(sariId, cars);
		
		Category updated = service.findOne(sariId);
		assertEquals(cars.getName(), updated.getName());
		assertEquals(cars.getDescription(), updated.getDescription());
	}
}
