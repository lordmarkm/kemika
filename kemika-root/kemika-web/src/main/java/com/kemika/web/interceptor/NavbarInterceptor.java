package com.kemika.web.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kemika.commons.services.CategoryService;

/**
 * Make available to every page the information required by the navbar, since it's always there
 * @author Mark
 */

@Component
public class NavbarInterceptor extends HandlerInterceptorAdapter {

	@Resource
	private CategoryService cats;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView mav) throws Exception {
	
		if(mav != null) {
			mav.addObject("navcats", cats.findAll());
		}
		
	}
	
}
