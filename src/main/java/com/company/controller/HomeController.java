package com.company.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.company.dto.DoctorVO;
import com.company.service.LoginService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private LoginService loginService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 처음 home page 로 이동
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
	 * Home 에서 일반사용자 버튼 클릭시 페이지 이동
	 */
	@RequestMapping(value = "generalUserButton",  method = RequestMethod.GET)
	public String generalUserButton() throws Exception{

		logger.info("generalSurvey Button clicked");
		return "generalSurvey";
	}
	/**
	 * 로그인화면으로 이동
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
	public String loginCheck(DoctorVO doctor, HttpSession session ,
			HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		logger.info("LoginCheck");
		String returnURL ="";
		
		if(session.getAttribute("login") != null )
		{
	        // 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("login"); // 기존값을 제거해 준다
		}
		DoctorVO vo = loginService.login(doctor);
		if( vo != null) // 로그인 성공 
		{
			session.setAttribute("login", vo); // 세션에 login이란 이름으로 DoctorVO 객체를 저장해 놈
			returnURL = "/defaultPage"; // 로그인 성공시 다음페이지 이동
			
			// 1. 로그인 성공하면, 그 다음으로는 로그인 폼에서 쿠키가 체크된 상태로 로그인 요청이 왔는지를 확인한다.
			if(doctor.isUseCookie()) { // 로그인 폼에서 쿠키 사용여부 확인했을때 체크박를 체크했다면 쿠키 생성
				// 현재 로그인 되어 있을때 생성되었던 세션 id를 쿠키에 저장
				Cookie cookie = new Cookie("loginCookie", session.getId());
				// 경로 "/" 설정 함으로써 contextPath 이하의 모든 요청에 대해서 쿠키 전송할수 있도록 설정
				cookie.setPath("/");
				int amount = 1; // 단위는 초 임으로 1일정도 유효시킴 60*60*24*1;
				cookie.setMaxAge(amount); 
				//쿠키 적용
				response.addCookie(cookie);
				
				// currentTimeMills()가 1/1000 초 단위임으로 1000곱해서 더해야함
				Date sessionLimit = new Date(System.currentTimeMillis()+ (100*amount));
				// 현재 세션 id 와 유효시간을 사용자 테이블에 저장한다.
				Map<String, Object> map  = new HashMap<String, Object>();
				map.put("userId", vo.getUserId());
				map.put("sessionId", session.getId());
				map.put("next", sessionLimit);
				loginService.keepLogin(map);
				//loginService.keepLogin(vo.getUserId(), session.getId(), sessionLimit);
			}
		}
		else { // 로그인 실패한 경우
			returnURL = "login";
		}
		
		return returnURL;
	}


	// 로그아웃 하는 부분
    @RequestMapping(value="logout")
    public @ResponseBody String logout(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
    	logger.info("Logout");
        Object obj = session.getAttribute("login");
        if ( obj != null ){
            DoctorVO vo = (DoctorVO)obj;
            // null이 아닐 경우 제거
            session.removeAttribute("login");
            session.invalidate(); // 세션 전체를 날려버림
            //쿠키를 가져와보고
            Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
            if ( loginCookie != null ){
                // null이 아니면 존재하면!
                loginCookie.setPath("/");
                // 쿠키는 없앨 때 유효시간을 0으로 설정하는 것 !!! invalidate같은거 없음.
                loginCookie.setMaxAge(0);
                // 쿠키 설정을 적용한다.
                response.addCookie(loginCookie);
                // 사용자 테이블에서도 유효기간을 현재시간으로 다시 세팅해줘야함.
                Date date = new Date(System.currentTimeMillis());
                Map<String, Object> map  = new HashMap<String, Object>();
				map.put("userId", vo.getUserId());
				map.put("sessionId", session.getId());
				map.put("next", date);
                loginService.keepLogin(map);
            }
        }
        return "/home/login"; // 로그아웃 후 이동  
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
}