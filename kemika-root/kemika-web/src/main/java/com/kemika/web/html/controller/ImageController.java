package com.kemika.web.html.controller;

import java.io.IOException;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author mbmartinez
 */
@Controller
@RequestMapping("/image")
public interface ImageController {
	
	@RequestMapping("/category/{id}")
	ResponseEntity<byte[]> category(Long id) throws IOException;

	@RequestMapping("/upload/{type}/{id}")
	ModelAndView uploadImageForm(String type, String id);
	
}
