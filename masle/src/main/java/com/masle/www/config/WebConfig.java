package com.masle.www.config;

import java.util.UUID;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {RootConfig.class, SecurityConfig.class};
		}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {ServletConfiguration.class};
	}

	@Override
	protected String[] getServletMappings() {
		// HomeController의 "/"에 반응하여 이동
		return new String[] {"/"};
	}

	@Override
	protected Filter[] getServletFilters() {
		// 인코딩 필터(utf-8로 설정하기 위함)
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8"); // 들어오는 값 인코딩해서 들어옴
		encodingFilter.setForceEncoding(true); // 나가는 값도 인코딩해서 나감
		return new Filter[] {encodingFilter};
	}


	
	
}