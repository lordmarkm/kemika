package com.kemika.commons.services;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.models.Category;
import com.kemika.commons.models.Image;
import com.kemika.commons.models.Product;
import com.kemika.commons.services.config.CommonsServicesConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class})
public class CategoryServiceTest {

	@Resource
	private CategoryService service;
	
	@Resource
	private ProductService products;
	
	@Before
	public void setup() {
		service.deleteAll();
	}
	
	@After
	public void after() {
		service.deleteAll();
	}
	
	private Product marlboro() {
		Product p = new Product();
		p.setName("Marlboro");
		p.setDescription("Come to where the flavor is.");
		return p;
	}
	
	private Product coke() {
		Product p = new Product();
		p.setName("Coca cola");
		p.setDescription("Aaaaaah");
		return p;
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
	public void testCascade() {
		Category c = sari();
		c.getProducts().add(marlboro());
		c.getProducts().add(coke());
		c = service.save(c);
		
		List<Product> prods = (List<Product>) products.findAll();
		assertEquals(2, prods.size());
		
		service.delete(c);
		prods = (List<Product>) products.findAll();
		assertEquals(0, prods.size());
	}
	
	@Test
	public void testGetNames() {
		service.save(sari());
		service.save(cars());
		List<String> names = service.getNames();
		assertTrue(names.isEmpty() == false);
	}
	
	@Test
	public void testFindAllWithProducts() {
		Category c = sari();
		c.getProducts().add(coke());
		c.getProducts().add(marlboro());
		service.save(c);
		
		Category saved = service.findAllWithProducts().get(0);
		assertNotNull(saved.getProducts());
		assertEquals(2, saved.getProducts().size());
	}
	
	@Test
	public void testCascadeOnImage() {
		
		byte[] bytes = "Hello world".getBytes();
		
		Image i = new Image();
		i.setImage(bytes);
		
		Category c = sari();
		c.setImage(i);
		
		Long id = service.save(c).getId();
		
		Category savedCat = service.findOne(id);
		assertNotNull(savedCat);
		assertNotNull(savedCat.getImage());
		assertTrue(Arrays.equals(bytes, savedCat.getImage().getImage()));
		
		byte[] saved = service.getImage(id);
		
		assertTrue(Arrays.equals(bytes, saved));
		
		assertTrue(service.getImages().size() == 1);
		service.delete(savedCat);
		assertTrue(service.getImages().size() == 0);
	}
	
	@Test
	public void testUrlFragment() {
		Category cat = service.create(sari());
		assertEquals("sari-sari-store-products", cat.getUrlFragment());
	}
}
