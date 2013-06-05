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

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.config.CommonsServicesConfig;
import com.kemika.commons.utils.NameUtil;

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
	public void testUrlFragment() {
		Category c = new Category();
		c.setName("Cancer");
		c.setDescription("Cancerous things");
		cats.save(c);
		
		Product product = new Product();
		product.setName(productName);
		product.setDescription(productDesc);
		
		Product saved = service.create(product, "Cancer");
		assertEquals(NameUtil.toUrlFragment(productName), saved.getUrlFragment());
	}
	
	@Test
	public void testRemove() {
		Category cat = new Category();
		cat.setName("wat");
		cat.setDescription("wat");
		cats.save(cat);
		
		Product pr = new Product();
		pr.setName(productName);
		pr.setDescription(productDesc);
		pr.setCategory(cat);
		
		cat.getProducts().add(pr);
		cat = cats.save(cat);
		
		assertEquals(1, cat.getProducts().size());

		Product p = cat.getProducts().get(0); 
		assertNotNull(p);
		assertNotNull(service.findOne(p.getId()));
		assertNotNull(service.findByName(p.getName()));
		service.remove(p.getId());
		assertTrue(service.findByName(p.getName()) == null);
	}
}
