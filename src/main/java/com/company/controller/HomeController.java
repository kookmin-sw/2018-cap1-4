package com.company.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.dto.DoctorVO;

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

		return "home";
	}
	/**
	 * Home 에서 의사유저 버튼 클릭시 페이지 이동
	 */
	@RequestMapping(value = "docPageButton",  method = RequestMethod.GET)
	public String docPageButton() throws Exception{

		logger.info("docPage Button clicked");
		return "login";
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
	 * 로그인 체크(사용자가 의사일경우 확인) 
	 */
	@RequestMapping(value="loginCheck", method = RequestMethod.POST)
	public String loginCheck(DoctorVO doctor, HttpSession session , Model model ,
			HttpServletRequest request, HttpServletResponse reponse) throws Exception
	{
		logger.info("LoginCheck");
		String returnURL ="";
		try {
				// UserVO vo = userService.login(dto); // 디비 연동후 등록된 사용자 // 검색 추후 구현 예정
				if("admin".equals(doctor.getId()) && "123".equals(doctor.getPw()))
				{
					Map map = new HashMap();
					map.put("admin_id", "admin"); //세션 추후 수정예정
					System.out.println("아이디 비번 일치!");
					request.getSession().setAttribute("LOGIN", map); // 세션에 admin 정보 셋팅
					returnURL = "/defaultPage";
				}
				else {
					returnURL = "login";
				}
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		return returnURL;
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
	/**
	 * 의사 페이지 이동
	 */
	@RequestMapping(value="/defaultPage")  // 추후 defaultPage 이름 수정예정
	public String doctorPage(Model model) throws Exception
	{
		logger.info("doctorPage");
		
		return "defaultPage";
	}
	/**
	 * evalTablePage 룰 평가 페이지
	 */
	@RequestMapping(value="/evalTablePage")
	public String evaluateRule(Model model) throws Exception
	{
		logger.info("evalTablePage");
		
		return "evalTablePage";
	}
	/**
	 * GeneralPage
	 */
	@RequestMapping(value="/generalSurvey")
	public String generalSurvey(Model model) throws Exception
	{
		logger.info("generalSurvey");
		
		return "generalSurvey";
	}
	
	
}