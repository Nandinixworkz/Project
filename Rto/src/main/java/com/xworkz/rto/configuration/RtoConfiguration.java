package com.xworkz.rto.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@ComponentScan("com.xworkz")
public class RtoConfiguration {
	public RtoConfiguration() {
		System.out.println("RtoConfiguration ......");
	}
	
	@Bean
	public ViewResolver ViewResolver() {
		System.out.println("ViewResolver start...");
		InternalResourceViewResolver resolver =new InternalResourceViewResolver();
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean
	public LocalContainerEntityManagerFactoryBean Bean() {
		System.out.println("LocalContainerEntityManagerFactoryBean started...");
		LocalContainerEntityManagerFactoryBean lcemf = new LocalContainerEntityManagerFactoryBean();
		System.out.println(lcemf);
		System.out.println("LocalContainerEntityManagerFactoryBean...");
		return lcemf;
	}

}
