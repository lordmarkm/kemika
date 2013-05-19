package com.kemika.commons.services;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.models.Product;
import com.kemika.commons.services.config.CommonsServicesConfig;

/**
 * @author Mark
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class})
public class ProductServiceTest {

	private String productName = "Marlboro Lights";
	private String productDesc = "Come to Marlboro Country. Come to where the flavor is.";
	
	@Resource
	private ProductService service;
	
	@Resource
	private CategoryService cats;
	
	@Before
	public void setup() {
		cats.deleteAll();
		service.deleteAll();
	}
	
	private Product save() {
		Product product = new Product();
		product.setName(productName);
		product.setDescription(productDesc);
		product = service.save(product);
		return product;
	}
	
	@Test
	public void testSave() {
		Product p = save();
		assertNotNull(p);
	}
	
	@Test
	public void testRetrieve() {
		save();
		Product marlboro = service.findByName(productName);
		assertNotNull(marlboro);
		assertEquals(productDesc, marlboro.getDescription());
	}
	
	@Test
	public void testUpdate() {
		save();
		Product marlboro = service.findByName(productName);
		marlboro.setDescription("Cancer lol");
		service.save(marlboro);
		marlboro = service.findByName(productName);
		assertEquals("Cancer lol", marlboro.getDescription());
	}
	
	@Test
	public void testDelete() {
		Product p = save();
		assertNotNull(p);
		assertNotNull(service.findByName(p.getName()));
		service.delete(p.getId());
		assertTrue(service.findByName(p.getName()) == null);
	}
}
