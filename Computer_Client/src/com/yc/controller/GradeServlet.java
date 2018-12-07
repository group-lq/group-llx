package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.Grades;
import com.yc.biz.GradeBiz;

@WebServlet("/Grade.s")
public class GradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GradeBiz gBiz = new GradeBiz();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		
		if("glogin".equals(op)) {
			glogin(request,response);
		}
	}
	private void glogin(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		//接收参数
		String idenno = request.getParameter("idenno");
		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		Grades grades = null;
		
		try {
			grades = gBiz.login(idenno,subject,name);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("ClientJsp/grade.jsp").forward(request, response);
			return;
		}
		if (grades == null) {
			request.setAttribute("msg", "对不起，您所填的信息有误，请重新填写");
			request.getRequestDispatcher("ClientJsp/grade.jsp").forward(request, response);
		}else {
			//将用户信息保存到会话中
			request.getSession().setAttribute("loginedUser", grades);
			
			//成功
			request.getRequestDispatcher("ClientJsp/grade_result.jsp").forward(request, response);
		
			//response.sendRedirect("ClientJsp/grade_result.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
}
