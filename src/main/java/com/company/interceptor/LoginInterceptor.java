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
	
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		logger.info("preHandle");
        if(session.getAttribute("LOGIN")!= null) 
        {
        	logger.info("clear login!");
        	session.removeAttribute("LOGIN");
        }
        return true;
    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, 
    		ModelAndView modelAndView) throws Exception {
    	logger.info("postHandle");
    	HttpSession session = request.getSession();
    	
    	ModelMap modelMap = modelAndView.getModelMap();
    	Object userVO = modelMap.get("userVO");
    	
    	System.out.println("userVO : "+userVO);
    	if(userVO != null) {
    		logger.info("new Login");
    		session.setAttribute("LOGIN", userVO);
    		response.sendRedirect("/");
    	} else {
    		response.sendRedirect("/home/login");
    	}
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
