package com.yc.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yc.dao.BeanUtils;
import com.yc.dao.CookieUtil;
import com.yc.dao.RegexUtils;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.UserBiz;


@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz uBiz = new UserBiz();
	private String username = null;
	private final static int cookieTime=60*60*24*7; //一周的cookie
	
	   protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		   	request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String op = request.getParameter("op");			
			if("login".equals(op) || "Clogin".equals(op)){
				login(request,response,op);
			}else if("query".equals(op)){
				query(request,response);
			}else if("add".equals(op)){
				add(request,response);
			}else if("find".equals(op)){
				find(request,response);
			}else if("save".equals(op)){
				save(request,response);
			}else if("query1".equals(op)){
				query1(request,response);
			}else if("pic".equals(op)){
				showPic(request,response);
			}else if("checkTel".equals(op)){
				showTelMsg(request,response);
			}else if("checkEmail".equals(op)){
				showEmailMsg(request,response);
			}else if("checkNameTel".equals(op) || "checkNameEmail".equals(op)){
				showNameMsg(request,response,op);
			}else if("modify".equals(op)){
				 modify(request,response,op);
			}
		}
	   
		/*private void show(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
			String account = request.getParameter("username");
			User user = null ;
			if(RegexUtils.checkEmail(user)){
				request.setAttribute("loginMsg", "邮箱格式错误!");
				user = uBiz.findByEmail(user);
				String userString = JSON.toJSONString(user.getPic());
				response.getWriter().append(userString);
			}else if(RegexUtils.checkMobileNumber(user)){
				request.setAttribute("loginMsg", "手机格式错误!");
				user = uBiz.findByTel(user);
				String userString = JSON.toJSONString(user.getPic());
				response.getWriter().append(userString);
			}else{
				user = uBiz.findByName(user);
			}
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
		}*/

		private void modify(HttpServletRequest request, HttpServletResponse response, String op) 
				throws ServletException, IOException{
			User user = BeanUtils.asBean(request, User.class);
			String retPwd = request.getParameter("retpwd");
			try {
				int count = uBiz.modify(user,retPwd,username);
				if(count != 0) {
					response.sendRedirect("forgetMyPwd3.jsp");
				}else {
					request.setAttribute("exception", "系统正在维修,请稍后再试.....");
					request.getRequestDispatcher("forgetMyPwd2.jsp").forward(request, response);
				}
			} catch (BizException e) {
				e.printStackTrace();
				request.setAttribute("modify", e.getMessage());
				request.getRequestDispatcher("forgetMyPwd2.jsp").forward(request, response);
			}
			

		}


		private void showNameMsg(HttpServletRequest request, HttpServletResponse response,String op)
				throws ServletException, IOException{
			User user = BeanUtils.asBean(request, User.class);
			if(user.getUsername() != null){
				if("checkNameTel".equals(op)) {
					user = uBiz.findByName(user);
					if(user == null){
						request.getSession().setAttribute("checkNameMsg", "该用户未注册");
						response.sendRedirect("forgetMyPwdTel.jsp");
					}else{
						username = user.getUsername();
						request.getRequestDispatcher("forgetMyPwdTel1.jsp").forward(request, response);
					}
				}else {
					user = uBiz.findByName(user);
					if(user == null){
						request.getSession().setAttribute("checkNameMsg", "该用户未注册");
						request.getRequestDispatcher("forgetMyPwdEmail.jsp").forward(request, response);
					}else{
						username = user.getUsername();
						//request.getRequestDispatcher("forgetMyPwdEmail1.jsp").forward(request, response);
						response.sendRedirect("forgetMyPwdEmail1.jsp");
					}
				}
			}else {
				request.getSession().setAttribute("checkNameMsg", "请填写用户名");
				request.getRequestDispatcher("forgetMyPwdTel.jsp").forward(request, response);
			}
			
			
		}

		private void showEmailMsg(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException{
			User user = BeanUtils.asBean(request, User.class);
			Map<String,String> map = new HashMap<String,String>();
			if("".equals(user.getEmail()) && user.getEmail().trim().isEmpty()){
				map.put("checkMsg", "请填写邮箱!");
				String checkMsg = JSON.toJSONString(map);
				response.getWriter().append(checkMsg);
				return;
			}
			if(!RegexUtils.checkEmail(user)){
				map.put("checkMsg", "邮箱格式错误!");
			}else{
				user = uBiz.findByEmail(user);
				if(user == null){
					map.put("checkMsg", "该邮箱与绑定邮箱不一致!");
				}
					
			}
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
		
		}

		private void showTelMsg(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
			User user = BeanUtils.asBean(request, User.class);
			Map<String,String> map = new HashMap<String,String>();
			if("".equals(user.getTel()) && user.getTel().trim().isEmpty()){
				map.put("checkMsg", "请填写手机号!");
				String checkMsg = JSON.toJSONString(map);
				response.getWriter().append(checkMsg);
				return;
			}
				if(!RegexUtils.checkMobileNumber(user)){
					map.put("checkMsg", "手机格式错误!");
				}else{
					user = uBiz.findByTel(user);
					System.out.println(user);
					if(user == null){
						map.put("checkMsg", "该手机号与绑定手机号不一致!");
					}
				}
				String checkMsg = JSON.toJSONString(map);
				response.getWriter().append(checkMsg);
		}

		private void showPic(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
			User user = BeanUtils.asBean(request, User.class);
			if(RegexUtils.checkEmail(user)){
				user = uBiz.findByEmail(user);
			}else if(RegexUtils.checkMobileNumber(user)){
				user = uBiz.findByTel(user);
			}else{
				user = uBiz.findByName(user);	
			}
			String userString = JSON.toJSONString(user);
			response.getWriter().append(userString);
		}


		private void query1(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			//request.setCharacterEncoding("utf-8");
			User user = BeanUtils.asBean(request, User.class);
			request.setAttribute("directorList", uBiz.findDirector(user));
			request.getRequestDispatcher("ServerJsp"+"/repair.jsp").forward(request, response);
		}


		private void save(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException{
			response.setCharacterEncoding("utf-8");
			User user = BeanUtils.asBean(request, User.class);
			String msg;
			try {
				uBiz.save(user);
				msg = "用户信息保存成功!";
			} catch (BizException e) {
				e.printStackTrace();
				msg = e.getMessage();
			}
			response.getWriter().append(msg);
		}

		private void find(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException{
			
			String id = request.getParameter("id");
			User user = uBiz.findByOne(id);
			String userString = JSON.toJSONString(user);
			response.getWriter().append(userString);
		
		}

		private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			User user = BeanUtils.asBean(request, User.class);
			String repwd = request.getParameter("repwd");
			try {
				uBiz.add(user,repwd);
			} catch (BizException e) {
				e.printStackTrace();
				request.setAttribute("msg", e.getMessage());
			}finally{
				query(request,response);
			}
		}

		private void query(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			//request.setCharacterEncoding("utf-8");
			User user = BeanUtils.asBean(request, User.class);
			request.setAttribute("userList", uBiz.find(user));
			request.getRequestDispatcher("ServerJsp"+"/manage-user.jsp").forward(request, response);
		}

		private void login(HttpServletRequest request, HttpServletResponse response,String op)
				throws ServletException, IOException{
			String username = request.getParameter("username");
			String userpwd = request.getParameter("userpwd");
			String checkbox = request.getParameter("checkbox");
			User user = null;
			try {
				user = uBiz.login(username, userpwd);
			} catch (BizException e) {
				e.printStackTrace();
				request.setAttribute("msg", e.getMessage());
				request.getRequestDispatcher("ServerJsp/"+"login.jsp").forward(request, response);
				return;
			}
			if(user != null){
				if(checkbox != null){
					CookieUtil.saveCookie(response, user);
				}
				if("login".equals(op)){
					request.getSession().setAttribute("LoginedUser",user);				
					response.sendRedirect("ServerJsp/"+"index.jsp");
				}else{
					request.getSession().setAttribute("LoginedUser",user);				
					response.sendRedirect("ClientJsp/"+"index.jsp");
				}
			}else{
				request.setAttribute("msg", "用户名或密码错误！");
				request.getRequestDispatcher("Nlogin.jsp").forward(request, response);

				/*request.getSession().setAttribute("LoginedUser",user);
				System.out.println("login");
				response.sendRedirect("ServerJsp/"+"index.jsp");*/
			}
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

	
	

}
