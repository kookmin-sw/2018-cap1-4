package com.company.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 처음 defaultPage 로 이동
	 */
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) throws Exception{

		logger.info("defaultPage");

		return "defaultPage";
	}
	
	/**
	 * 평가 페이지로 이동
	 */
	@RequestMapping(value="/evalTablePage")
	public String evaluateRule(Model model) throws Exception
	{
		logger.info("evalTablePage");
		
		return "evalTablePage";
	}
	/**
	 * 로그인
	 */
	@RequestMapping(value="/login")
	public String login(Model model) throws Exception
	{
		logger.info("Login");
		
		return "login";
	}
	/**
	 * 접수 페이지 이동
	 */
	@RequestMapping(value="/receptionPage")
	public String receptionPage(Model model) throws Exception
	{
		logger.info("receptionPage");
		
		return "receptionPage";
	}
	 
}