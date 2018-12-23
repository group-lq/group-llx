package com.yc.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.yc.bean.Comment;
import com.yc.bean.News;
import com.yc.bean.Reply;
import com.yc.bean.User;
import com.yc.biz.SNewsBiz;
import com.yc.dao.BeanUtils;
import com.yc.dao.DBHelper;

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
			
		}else if ("queryComment".equals(op)) {
			
			queryComment(request,response);
			
		}else if ("replyComment".equals(op)) {
			
			replyComment(request,response);
			
		}else if ("find".equals(op)) {
			
			find(request,response);
			
		}
	}
	private void find(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Comment comment = BeanUtils.asBean(request, Comment.class);
		
		
		
	}
	/**
	 * 查到新闻评论后进行的回复
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void replyComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("LoginedUser");
		
		Reply rep = new Reply();
		//回复评论
		rep.setUserid(user.getId());
		String replyComment = request.getParameter("replyComment");
		rep.setReplyComment(replyComment);
		//评论id
		String commentId = request.getParameter("commentId");
		rep.setCommentId(commentId);
		//评论时间
		Timestamp date = new Timestamp(System.currentTimeMillis());
		rep.setReplyTime(date);
		snBiz.insertReply(rep);
		String msg ="回复成功";
		String mString = JSON.toJSONString(msg);
		response.getWriter().append(mString);
	}

	/**
	 * 
	 * 将数据库中的新闻评论显示到页面上
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Comment> comment=DBHelper.select("select * from comment",Comment.class);
		request.setAttribute("comment",comment);
		
		List<User> users=DBHelper.select("select * from user",User.class);
		request.setAttribute("users",users);
		
		List<News> news=DBHelper.select("select * from news",News.class);
		request.setAttribute("news",news);
		
		request.getRequestDispatcher("/ServerJsp/general.jsp").forward(request, response);
		return ;	
	}

	//修改后提交
	private void save(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		
		response.setCharacterEncoding("utf-8");
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
			response.sendRedirect("ServerJsp/grids.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			response.sendRedirect("ServerJsp/grids.jsp");
			System.out.println("dadada");
		}
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
