package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.News;
import com.yc.bean.User;
import com.yc.biz.NewsBiz;
import com.yc.dao.BeanUtils;


/**
 * Servlet implementation class NewsServlet
 */
@WebServlet("/cnews.s")
public class CNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsBiz nBiz = new NewsBiz();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		String newsid = request.getParameter("newsid");
		if("query".equals(op)){
			query(request,response);
		}else if("find".equals(op)){
			find(request,response,newsid);
		}else if("newquery".equals(op)){
			newQuery(request,response);
		}
	}
	
	private void newQuery(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {//index的最新新闻查询
		News news = BeanUtils.asBean(request, News.class);
		request.setAttribute("newsList", nBiz.findNew(news));
		request.getRequestDispatcher("ClientJsp/"+"index.jsp").forward(request, response);
	}

	private void find(HttpServletRequest request, HttpServletResponse response, String newsid)
			throws ServletException, IOException{
		String id = request.getParameter("newsid");
		request.setAttribute("news",nBiz.findByOne(id) );
		request.getRequestDispatcher("ClientJsp/"+"newsshow.jsp").forward(request, response);
	}

	private void query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		News news = BeanUtils.asBean(request, News.class);
		String nPage = request.getParameter("nowPage");
		int pageSize = 6;  //每页显示页数
		request.setAttribute("newsList", nBiz.find(news,nPage,pageSize));
		request.getRequestDispatcher("ClientJsp/"+"news.jsp").forward(request, response);
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
