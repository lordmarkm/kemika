package com.kemika.web.html.controller;

import java.io.IOException;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.web.dto.FileUploadForm;

/**
 * @author mbmartinez
 */
@Controller
@RequestMapping("/image")
public interface ImageController {
	
	@RequestMapping("/category/{id}")
	ResponseEntity<byte[]> category(Long id) throws IOException;

	@RequestMapping(value = "/upload/{type}/{id}", method = RequestMethod.GET)
	ModelAndView uploadImageForm(String type, Long id);
	
	@RequestMapping(value = "/upload/{type}/{id}", method = RequestMethod.POST)
	ModelAndView uploadImage(String type, Long id, FileUploadForm form, BindingResult result);
}
