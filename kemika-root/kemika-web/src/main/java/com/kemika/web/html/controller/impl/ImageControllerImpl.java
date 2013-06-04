package com.kemika.web.html.controller.impl;

import java.io.IOException;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.commons.lang.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.commons.models.EntityType;
import com.kemika.commons.services.CategoryService;
import com.kemika.commons.services.ProductService;
import com.kemika.web.dto.FileUploadForm;
import com.kemika.web.html.controller.ImageController;
import com.kemika.web.utils.NoImage;

@Component
public class ImageControllerImpl implements ImageController {

	private static Logger log = LoggerFactory.getLogger(ImageControllerImpl.class);
	
	@Resource
	private CategoryService cats;
	
	@Resource
	private ProductService products;
	
	@Resource
	private NoImage nimg;
	
	@Override
	public ResponseEntity<byte[]> category(@PathVariable EntityType type, @PathVariable Long id) throws IOException {
		final HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.IMAGE_PNG);
	    
	    byte[] img = null;
	    
	    switch(type) {
	    case category:
	    	img = cats.getImage(id);
	    	break;
	    case product:
	    	img = products.getImage(id);
	    	break;
	    }
	    
	    if(null == img) {
	    	img = nimg.get();
	    }
	    
		return new ResponseEntity<byte[]>(img, headers, HttpStatus.CREATED);
	}

	@Override
	public ModelAndView uploadImageForm(@PathVariable String type, @PathVariable Long id) {

		Validate.notEmpty(type);
		Validate.notNull(id);
		
		return new ModelAndView("uploadimg")
			.addObject("type", type)
			.addObject("id", id)
			.addObject("form", new FileUploadForm());
		
	}

	@Override
	public ModelAndView uploadImage(@PathVariable String type, @PathVariable Long id,
			@ModelAttribute @Valid FileUploadForm form, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("uploadimg")
				.addObject("type", type)
				.addObject("id", id)
				.addObject("form", form);
		}
		
		Validate.notNull(form);
		Validate.notNull(form.getFile());
		
		log.info("Received upload request: {}", form);
		
		switch(EntityType.valueOf(type)) {
		case category:
			cats.saveImage(id, form.getFile().getBytes());
			break;
		default:
			log.warn("File upload not yet supported for that type");
			break;
		}
		
		return new ModelAndView("redirect:/admin");
	}

}
