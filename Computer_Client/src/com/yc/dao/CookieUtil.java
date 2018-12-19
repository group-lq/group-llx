package com.yc.dao;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.User;

public class CookieUtil {
	private final static int cookieTime=60*60*24*7;
	private final static String cookieName="demo";
	
	public static void saveCookie(HttpServletResponse response,User user){
		
		response.setCharacterEncoding("utf-8");
		String username = user.getUsername();
		String pwd = user.getPwd();
		//用户名:密码:有效期 用MD5加密
		//将用户名、有效期、加密字符串用‘：’连接  保存在cookie中
		String MD5 = getMD5(username+":"+pwd+":"+cookieTime);
		String cookievalue=username+":"+cookieTime+":"+MD5;
		Cookie cook = new Cookie(cookieName,cookievalue);
		cook.setMaxAge(cookieTime);
		response.addCookie(cook);
	}
	
	public static void readCookie(ServletRequest request,ServletResponse response,FilterChain chain) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		Cookie [] cookies=httpRequest.getCookies();
		String cookieValue ="";
		User user = new User();
		for(Cookie cookie : cookies){
			if(cookieName.equals(cookie.getName())){
				if(cookie.getMaxAge()>60*60*24*7){
					cookie.setMaxAge(0);
					break;
				}
				cookieValue=cookie.getValue();
			}
		}
		String[] cv = cookieValue.split(":");
		if(cv.length==3){
			
			String mdsString=cv[2];
			//根据用户名得到用户实体类
			String MD5 = getMD5(user.getUsername()+user.getPwd()+cookieTime);
			//得到第二次加密的字符串
			if(mdsString.equals(MD5)){
				System.out.println("获取到cookie值");
				
				
			}/*else{ //如果以前加的密  与现在加的密不一样 说明数据库里的信息已将改变  将跳到登录界面
				String url=httpRequest.getContextPath()+"/Nlogin.jsp"; //获得当前项目的路径加上  后面的
				request.getRequestDispatcher("/Nlogin.jsp").forward(httpRequest, response);
	
			}
		}else{
			response.getWriter().print("cookie读取失败");
			request.setAttribute("msg", "请先登录！");
			String url=httpRequest.getContextPath()+"/Nlogin.jsp";//获得当前项目的路径加上  后面的
			request.getRequestDispatcher("/Nlogin.jsp").forward(httpRequest, response);*/
		}
	
	}
	//用MD5进行加密  返回加密后的字符串
	public static String getMD5(String value){
		String re="";
		try{
			MessageDigest md= MessageDigest.getInstance("MD5");
			md.update(value.getBytes());
			re=md.digest().toString();
		} catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
			return re;
	}
	
}
