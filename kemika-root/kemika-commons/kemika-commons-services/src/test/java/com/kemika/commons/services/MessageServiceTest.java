package com.kemika.commons.services;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kemika.commons.models.Message;
import com.kemika.commons.services.config.CommonsServicesConfig;

/**
 * @author Mark
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {CommonsServicesConfig.class})
public class MessageServiceTest {
	
	static Logger log = LoggerFactory.getLogger(MessageServiceTest.class);
	
	@Autowired
	private MessageService service;
	
	@Before
	public void setup() {
		service.deleteAll();
	}
	
	public Message dummy() {
		Message msg = new Message();
		msg.setKey("hello.world");
		msg.setMessage("Hello world!");
		return msg;
	}
	
	@Test
	public void testSave() {
		Message msg = dummy();
		service.save(msg);
	}
	
	@Test
	public void testFindAll() {
		service.deleteAll();

		Message msg = dummy();
		service.save(msg);
		
		List<Message> messages = service.findAll();
		assertNotNull(messages);
		assertTrue(messages.size() > 0);
		
		Message first = messages.get(0);
		log.info("First message: {}", first);
	}
	
	@Test
	public void testFindByKey() {
		service.deleteAll();
		
		Message msg = dummy();
		service.save(msg);
		
		Message msg1 = service.findByKey("hello.world");
		assertNotNull(msg1);
		assertEquals("Hello world!", msg1.getMessage());
	}

}
