package com.kemika.web.html.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.web.dto.CategoryForm;
import com.kemika.web.dto.ProductForm;

@Controller
@RequestMapping("/admin")
public interface AdminController {

	@RequestMapping(method = RequestMethod.GET)
	ModelAndView dashboard();

	@RequestMapping(value = "/newcategoryform", method = RequestMethod.GET)
	ModelAndView newCategory();

	@RequestMapping(value = "/newcategory", method = RequestMethod.POST)
	ModelAndView newCategory(CategoryForm form, BindingResult result);

	@RequestMapping(value = "/category/edit/{id}", method = RequestMethod.GET)
	ModelAndView editCategory(Long id);
	
	@RequestMapping(value = "/category/edit", method = RequestMethod.POST)
	ModelAndView editCategory(CategoryForm form, BindingResult result);
	
	@RequestMapping(value = "/category/delete/{id}", method = RequestMethod.GET)
	ModelAndView deleteCategory(Long id);
	
	@RequestMapping(value = "/newproductform", method = RequestMethod.GET)
	ModelAndView newProduct();
	
	@RequestMapping(value = "/newproduct", method = RequestMethod.POST)
	ModelAndView newProduct(ProductForm form, BindingResult result);
	
	@RequestMapping(value = "/product/edit/{id}", method = RequestMethod.GET)
	ModelAndView editProduct(Long id);
	
	@RequestMapping(value = "/product/edit", method = RequestMethod.POST)
	ModelAndView editProduct(ProductForm form, BindingResult result);
	
	@RequestMapping(value = "/product/delete/{id}", method = RequestMethod.GET)
	ModelAndView deleteProduct(Long id);
}
