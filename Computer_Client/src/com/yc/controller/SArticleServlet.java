package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.News;
import com.yc.biz.SNewsBiz;
import com.yc.dao.BeanUtils;

/**
 * Servlet implementation class SArticleAdd
 */
@WebServlet("/SArticleAdd.s")
public class SArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SNewsBiz snBiz = new SNewsBiz();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		if("AddArticle".equals(op)) {
			
			AddArticle(request,response);
			
		}else if ("query".equals(op)) {
			
			System.out.println(66);
			query(request,response);
			
		}else if("update".equals(op)) {
			
			update(request,response);
			
		}else if ("delete".equals(op)) {
			
			delete(request, response);
			
		}else if ("save".equals(op)) {
			
			save(request,response);
			
		}
	}
	
	//修改后提交
	private void save(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		
		response.setCharacterEncoding("utf-8");
		System.out.println("===================================");
		News news = BeanUtils.asBean(request, News.class);
		System.out.println(news.getTitle());
		String msg;
		
		try {
			snBiz.save(news);
			msg = "文章修改成功";
		} catch (Exception e) {
			e.printStackTrace();
			msg = e.getMessage();
		}
		response.getWriter().append(msg);
	}
	//删除记录
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException 
			{
		String newsid = request.getParameter("newsid");
		String msg;
		try {
			snBiz.delete(newsid);
			msg = "文章删除成功";
			request.getRequestDispatcher("ServerJsp/media.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			msg = e.getMessage();
			response.sendRedirect("ServerJsp/media.jsp");
		}
		response.getWriter().append(msg);
	}
	//修改文章
	private void update(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		String newsid = request.getParameter("newsid");	
		News news = snBiz.findByOne(newsid);
		//将news返回给页面
		String newsString = JSON.toJSONString(news);
		response.getWriter().append(newsString);
	}
	//一点击修改文章便会显示在界面上
	private void query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		News news = BeanUtils.asBean(request, News.class);
		String nPage = request.getParameter("nowPage");
		System.out.println(news.getTitle()+"============================");
		System.out.println(nPage);
		int pageSize = 5;  //每页显示页数
		request.setAttribute("newsList", snBiz.find(news,nPage,pageSize));
		request.getRequestDispatcher("/ServerJsp/media.jsp").forward(request, response);
		return ;
	}
	//添加文章
	private void AddArticle(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String content = request.getParameter("content");
		News news = BeanUtils.asBean(request, News.class);
		try {
			snBiz.addArticle(news,content);
			response.sendRedirect("/ServerJsp/grids.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			response.sendRedirect("/ServerJsp/grids.jsp");
			System.out.println("dadada");
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
