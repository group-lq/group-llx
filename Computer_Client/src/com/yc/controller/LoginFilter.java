package com.yc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.yc.dao.CookieUtil;

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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		String path = httpRequest.getServletPath();
		Cookie [] cookies=httpRequest.getCookies();
		request.setAttribute("base", httpRequest.getContextPath());
		
		List<String> list = new ArrayList<String>();
		list.add("user.s");
		list.add("Nlogin.jsp");
		list.add("forgetMyPwdTel.jsp");
		list.add("forgetMyPwdTel1.jsp");
		list.add("forgetMyPwdEmail.jsp");
		list.add("forgetMyPwdEmail2.jsp");
		list.add("forgetMyPwd2.jsp");
		list.add("forgetMyPwd3.jsp");
		list.add("register.jsp");
		list.add("register1.jsp");
		list.add("attNlogin.jsp");	
		list.add("about.jsp");	
		list.add("contact.jsp");	
		list.add("Crepair.jsp");	
		list.add("grade.jsp");
		list.add("index.jsp");	
		list.add("inform.jsp");	
		list.add("news.jsp");
		list.add("newsshow.jsp");	
		/*for(int i=0;i<list.size();i++) {
			if(path.endsWith(list.get(i))){
				chain.doFilter(request, response);
				return;
			}
		}
		if(httpRequest.getSession().getAttribute("LoginedUser") == null){
			CookieUtil.readCookie(httpRequest, response, chain);
			request.setAttribute("msg", "请先登录！");
			request.getRequestDispatcher("../Nlogin.jsp").forward(request, response);
			return;
		}*/
		//正常业务必须执行 过滤器链的doFilter

		chain.doFilter(request, response);
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
