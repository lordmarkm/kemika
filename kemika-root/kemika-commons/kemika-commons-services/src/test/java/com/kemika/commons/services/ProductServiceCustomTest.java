package com.kemika.commons.services;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.config.CommonsServicesConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class})
public class ProductServiceCustomTest {

	private String productName = "Marlboro Lights";
	private String productDesc = "Come to Marlboro Country. Come to where the flavor is.";
	
	@Resource
	private ProductService service;
	
	@Resource
	private CategoryService cats;
	
	private Category saveCat() {
		Category cat = new Category();
		cat.setName("Cigarettes");
		cat.setDescription("Carcinogenic recreational stick");
		return cats.save(cat);
	}
	
	private Product marlboro() {
		Product product = new Product();
		product.setName(productName);
		product.setDescription(productDesc);
		return product;
	}
	
	@Before
	public void setup() {
		service.deleteAll();
		cats.deleteAll();
	}
	
	@Test
	public void testSave() {
		Product p = marlboro();
		Category c = saveCat();
		service.save(p, c.getName());
		
		Product saved = service.findByName(p.getName());
		assertNotNull(saved);
	}
	
}
