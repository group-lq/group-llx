package com.yc.controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter(urlPatterns={
		 "*.jsp","*.s" 
})
public class LoginFilter implements Filter {

   
public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		String path = httpRequest.getServletPath();
		
		//request.getContextPath()
		
		System.out.println("================="+httpRequest.getContextPath());
		request.setAttribute("base", httpRequest.getContextPath());
		
		if(path.endsWith("user.s") || path.endsWith("login.jsp")){
			chain.doFilter(request, response);
			return;
		}
		System.out.println("进来了吗？");
		if(httpRequest.getSession().getAttribute("LoginedUser") == null){
			request.setAttribute("msg", "请先登录！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		//正常业务必须执行 过滤器链的doFilter
		chain.doFilter(request, response);
		
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("=====================999999999999");
	}

}
