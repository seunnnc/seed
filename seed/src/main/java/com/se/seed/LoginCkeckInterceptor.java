package com.se.seed;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCkeckInterceptor extends HandlerInterceptorAdapter{
	@Override 
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception{
		
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		String[] uriArr = uri.split("/");
		
		System.out.println("uriArr.length : " + uriArr.length);
		
		if(uri.equals("/")) {
			return true;
		} else if(uriArr[1].equals("assets")) {	//리소스 (css, img, js)
			return true;
		}
		
		System.out.println("로그인 인터셉터!");
		boolean isLogout = SecurityUtils.isLogout(request);

		switch(uriArr[1]) {
		case ViewRef.URI_USER:
			switch(uriArr[2]) {
			case "login": case "join":
				if(!isLogout) {
					response.sendRedirect("/record/main");
					return false;
				}
			}
		
		case ViewRef.URI_RECORD:
			switch(uriArr[2]) {
			case "main":
				if(isLogout) {
					response.sendRedirect("/");
					return false;
				}
			}
		}
		
		return true;
	}
}
