package com.company.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
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
        	response.sendRedirect("/login");
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
