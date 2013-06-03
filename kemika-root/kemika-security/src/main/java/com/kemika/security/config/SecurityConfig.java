package com.kemika.security.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.AuthenticationRegistry;
import org.springframework.security.config.annotation.web.EnableWebSecurity;
import org.springframework.security.config.annotation.web.HttpConfiguration;
import org.springframework.security.config.annotation.web.WebSecurityBuilder;
import org.springframework.security.config.annotation.web.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.encrypt.Encryptors;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.kemika.security.support.Roles;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
    private DataSource dataSource;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
	
	@Bean
	public TextEncryptor textEncryptor() {
		return Encryptors.noOpText();
	}
	
	@Override
	public void configure(WebSecurityBuilder builder) throws Exception {
		builder
			.ignoring()
				.antMatchers("/css/**","/images/**","/javascript/**","/libs/**");
	}
	
	@Override
	protected void configure(HttpConfiguration http) throws Exception {
		http
			.authorizeUrls()
				.antMatchers("/admin*").hasRole(Roles.ROLE_ADMIN)
				.antMatchers("/admin/**").hasRole(Roles.ROLE_ADMIN)
				.antMatchers("/**").permitAll()
				//.antMatchers("/favicon.ico","/css/**","/images/**","/javascript/**","/libs/**").permitAll()
				.and()
			.logout()
				.deleteCookies("JSESSIONID")
				.logoutUrl("/logout")
				.permitAll()
				.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/login/authenticate")
				.failureUrl("/login?error=bad_credentials")
				.permitAll();
	}
	
	@Override
	protected void registerAuthentication(AuthenticationRegistry builder) throws Exception {
		builder
			.jdbcUserDetailsManager()
			.dataSource(dataSource)
			.usersByUsernameQuery("select username, password, true from Account where username = ?")
			.authoritiesByUsernameQuery("select username, authorities from Account where username = ?");
	}
}
