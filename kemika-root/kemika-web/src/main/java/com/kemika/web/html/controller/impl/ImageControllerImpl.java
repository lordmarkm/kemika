package com.kemika.web.html.controller.impl;

import java.io.IOException;

import javax.annotation.Resource;

import org.apache.commons.lang.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.commons.services.CategoryService;
import com.kemika.web.html.controller.ImageController;
import com.kemika.web.utils.NoImage;

@Component
public class ImageControllerImpl implements ImageController {

	private static Logger log = LoggerFactory.getLogger(ImageControllerImpl.class);
	
	@Resource
	private CategoryService cats;
	
	@Resource
	private NoImage nimg;
	
	@Override
	public ResponseEntity<byte[]> category(@PathVariable Long id) throws IOException {
		final HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.IMAGE_PNG);
	    
	    byte[] img = cats.getImage(id);
	    if(null == img) {
	    	log.debug("About to return nimg");
	    	img = nimg.get();
	    	log.debug("Nimg: {}", img);
	    }
	    
		return new ResponseEntity<byte[]>(img, headers, HttpStatus.CREATED);
	}

	@Override
	public ModelAndView uploadImageForm(@PathVariable String type, @PathVariable String id) {

		Validate.notEmpty(type);
		Validate.notEmpty(id);
		
		return new ModelAndView("uploadimg")
			.addObject("type", type)
			.addObject("id", id);
		
	}
	
	

}
