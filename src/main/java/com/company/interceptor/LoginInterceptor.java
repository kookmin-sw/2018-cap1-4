package com.company.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.company.dto.DoctorVO;
import com.company.service.LoginService;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Inject
	LoginService loginService;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	// 인터셉터가 요청을 가로 채어 preHandle을 처리하고 작업을 완료한 후에는 postHandle로 넘어간다.
	// 컨트롤러 보다 먼저 수행
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		logger.info("preHandle");
		HttpSession session = request.getSession(); // 세션 객체를 가져옴
        Object obj = session.getAttribute("login"); // login 처리를 담당하는 사용자 정보를 담고있는 객체를 가져옴
        
        if(obj == null) // 로그인이 안되어 있는 상태이므로 로그인 폼으로 이동
        {
        	// 만들어 놓은 쿠키를 꺼내온다.
        	Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
        	if(loginCookie != null) { // 쿠키가 존재하는 경우 (이전에 로그인때 생성된 쿠키가 존재한다는 것)
        		// loginCookie 의 값을 꺼내오고 -> 즉, 저장해논 세션 Id를 꺼내오고,
        		String sessionId = loginCookie.getValue();
        		// 세션 id를 checkUserWithSessionKey에 전달해서 이전에 로그인 한적이 있는지 체크하고
        		// 유효시간이 지나지 않았고 sessionId 정보를 가지고 있는 사용자
        		DoctorVO vo = loginService.checkUserWithSessionKey(sessionId);
        		
        		if( vo != null ) { // 조건에 만족하는 사용자 정보가 있다면
        			session.setAttribute("login", vo);
        			return true;
        		}
        	}
        	
        	// 로그인도 안되어 있고 쿠키도 존재하지 않는 경우 
        	response.sendRedirect("login");
        	return false; // 더이상 컨트롤러 요청으로 가지 않도록 false 반환
        }
        // preHandle의 return 은 컨트롤러 요청 uri로 가도 되는지를 확인
        // 따라서 true로 하면 컨트롤러 uri로 가게 됨
        return true;
    }
	
	// 컨트롤러 수행되고 화면이 보여지기 직전에 수행되는 메서드
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, 
    		ModelAndView modelAndView) throws Exception {
    	logger.info("postHandle");
    	super.postHandle(request, response, handler, modelAndView);
    }
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
}
