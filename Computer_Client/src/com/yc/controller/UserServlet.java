package com.yc.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.dao.BeanUtils;

import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.UserBiz;


@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz uBiz = new UserBiz();
	
	   protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		   request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String op = request.getParameter("op");
			if("login".equals(op)){
				login(request,response);
			}else if("query".equals(op)){
				query(request,response);
			}else if("add".equals(op)){
				add(request,response);
			}else if("find".equals(op)){
				find(request,response);
			}else if("save".equals(op)){
				save(request,response);
			}
			
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
			
			System.out.println(request.getParameter("name"));
			
			//request.getContentType();
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
			System.out.println(user.getUsername());
			System.out.println(request.getParameter("name"));
			request.setAttribute("userList", uBiz.find(user));
			request.getRequestDispatcher("manage-user.jsp").forward(request, response);;
		}

		private void login(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException{
			String username = request.getParameter("username");
			String userpwd = request.getParameter("userpwd");
			
			User user = null;
			try {
				user = uBiz.login(username, userpwd);
			} catch (BizException e) {
				e.printStackTrace();
				request.setAttribute("msg", e.getMessage());
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;
			}
			
			if(user == null ){
				request.setAttribute("msg", "用户名或密码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else{
				request.getSession().setAttribute("LoginedUser",user);
				System.out.println("login");
				response.sendRedirect("ServerJsp/"+"index.jsp");
				
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
