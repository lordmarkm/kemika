package com.kemika.web.html.controller.impl;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kemika.web.html.controller.ExperimentController;

@Component
public class ExperimentControlerImpl implements ExperimentController{
	
	public ModelAndView experiment() {
		return new ModelAndView("experiment");
	}
	
	public ModelAndView contactus() {
		return new ModelAndView("contactus");
	}
	
	public ModelAndView foodproductlist() {
		return new ModelAndView("foodproductlist");
	}
	
	public ModelAndView cosmeticsproductlist() {
		return new ModelAndView("cosmeticsproductlist");
	}
	
	public ModelAndView veterinaryproductlist() {
		return new ModelAndView("veterinaryproductlist");
	}
}
