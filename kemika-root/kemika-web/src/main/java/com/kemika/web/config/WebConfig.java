package com.kemika.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.kemika.web.utils.DbMessageSource;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = "com.kemika.web")
@PropertySource("classpath:mvc.properties")
public class WebConfig extends WebMvcConfigurerAdapter {

	@Autowired 
	private DbMessageSource messageSource;
	
    @Bean
    public MessageSource messageSource() {
//        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
//        messageSource.setBasename("messages");
//        messageSource.setCacheSeconds(0);
//        return messageSource;
    	return messageSource;
    }
    
    /**
     * Should be equivalent to
     * <mvc:resources mapping="/css/**" location="/css/"/> 
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	registry.addResourceHandler("/libs/**").addResourceLocations("/libs/");
        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        registry.addResourceHandler("/javascript/**").addResourceLocations("/javascript/");
        registry.addResourceHandler("/images/**").addResourceLocations("/images/");
    }
    
}
