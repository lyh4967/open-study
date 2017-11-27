//package org.sbang.interceptor;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//public class AuthInterceptor extends HandlerInterceptorAdapter {
//	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
//
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//		HttpSession session = request.getSession();
//		
//		if(session.getAttribute("login")==null){
//			logger.info("current user isnot logined");
//			request.setAttribute("nologin", "nologin");
//			response.sendRedirect("/");
//			return false;
//		}
//		
//		return true;
//	}
//
//}
