package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.UserBiz;
import com.yc.dao.BeanUtils;


@WebServlet("/cuser.s")
public class CUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz uBiz = new UserBiz();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");	
		if("Clogin".equals(op)){
			login(request,response);
		}else if("query".equals(op)){
			query(request,response);
		}
	}
	
	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		User user = BeanUtils.asBean(request, User.class);
		request.setAttribute("userList", uBiz.find(user));
		request.getRequestDispatcher("ClientJsp"+"/manage-user.jsp").forward(request, response);
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
			request.getRequestDispatcher("ClientJsp/Clogin.jsp").forward(request, response);
			return;
		}
		
		if(user == null ){
			request.setAttribute("msg", "用户名或密码错误！");
			request.getRequestDispatcher("ClientJsp/"+"Clogin.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("LoginedUser",user);				
			response.sendRedirect("ClientJsp/"+"index.jsp");
		}
}

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
