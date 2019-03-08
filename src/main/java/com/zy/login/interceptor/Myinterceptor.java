package com.zy.login.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Myinterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		//先获取访问路径
		String requestURI = request.getRequestURI();
		//判断请求路径是否是登陆时候的所有请求
		if(requestURI.indexOf("login") != -1){
			return true;
		}else{
			//判断是否已经登陆过了
			Object attribute = request.getSession().getAttribute("user");
			if(attribute != null){
				return true;
			}
		}
		response.sendRedirect(request.getContextPath()+"/login.jsp");
		return false;
	}

}








