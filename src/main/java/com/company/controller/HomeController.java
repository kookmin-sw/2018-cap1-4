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
	 * @param db에서 받아온 평가된 rule 데이터를 memberList라는 이름으로 받아와서 model에 추가후 리턴(evalTablePage.jsp 에서 memberList
	 * 라는 이름으로 사용 
	 */
	@RequestMapping(value="/evalTablePage")
	public String evaluateRule(Model model) throws Exception
	{
		logger.info("evalTablePage");
		
		return "evalTablePage";
	}

	
	 
}