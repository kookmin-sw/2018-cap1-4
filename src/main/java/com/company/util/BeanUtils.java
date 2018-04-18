package com.company.util;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.context.ApplicationContext;

public class BeanUtils {
	@Autowired DefaultListableBeanFactory df; // 빈객체 확인할수 있는 Factory
	public static Object getBean(String beanId) {
		ApplicationContext applicationContext = ApplicationContextProvider.getApplicationContext();
		
		if( applicationContext == null) {
			throw new NullPointerException("String의 ApplicationContext 초기화 안됨");
		}
		
		return applicationContext.getBean(beanId);
	}
	
	 @Test
	 public void beans() { // 현재 스프링 컨테이너에 있는 빈객체 확인
		 for(String name : df.getBeanDefinitionNames()) {
			 System.out.println("test : "+name+" \t "+df.getBean(name).getClass().getName());
			
		 }
	 }
}
