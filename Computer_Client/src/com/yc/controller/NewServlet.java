package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.News;
import com.yc.biz.NewsBiz;
import com.yc.dao.BeanUtils;


@WebServlet("/news.s")
public class NewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsBiz nBiz = new NewsBiz();   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(request.getParameterValues("checked")+"==================");
		String op = request.getParameter("op");
		String newsid = request.getParameter("newsid");
		if("query".equals(op)){
			query(request,response);
		}
	}

	private void query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		News news = BeanUtils.asBean(request, News.class);
		request.setAttribute("newsList", nBiz.findS(news));
		request.getRequestDispatcher("ServerJsp/"+"article.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
