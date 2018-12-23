package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.Notice;
import com.yc.bean.Page;
import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.NoticeBiz;
import com.yc.biz.RepairBiz;
import com.yc.dao.BeanUtils;

/**
 * Servlet implementation class Notice
 */
@WebServlet("/notice.s")
public class NoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeBiz nBiz = new NoticeBiz();   
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");	
		if("query".equals(op)){
			query(request,response);
		}else if("find".equals(op)){
			find(request,response);
		}else if("add".equals(op)){
			add(request,response);
		}else if("query1".equals(op)){
			query1(request,response);
		}
	} 
	
	private void query1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===================================");
		Page page = BeanUtils.asBean(request, Page.class);
		Notice notice = BeanUtils.asBean(request, Notice.class);
		System.out.println(page.getPage()+":"+page.getRows());
		String res = JSON.toJSONString(nBiz.find1(notice,page));
		response.getWriter().append(res);
		//request.setAttribute("repairList", rBiz.find(repair));
		//request.getRequestDispatcher("ClientJsp/"+"Crepair.jsp").forward(request, response);		
	}
	
	private void add(HttpServletRequest request, HttpServletResponse response) 	
			throws ServletException, IOException {
		User user = BeanUtils.asBean(request, User.class);
		Notice notice = BeanUtils.asBean(request, Notice.class);
		String time = request.getParameter("time");
		System.out.println(notice.getTime());
		String msg = null;
		try {
			nBiz.add(notice,user,time);
			msg = "会议通知已上传..";
			String res = JSON.toJSONString(msg);
			response.getWriter().append(res);
		} catch (BizException e) {
			e.printStackTrace();
			msg = e.getMessage();
			String res = JSON.toJSONString(msg);
			response.getWriter().append(res);
		}
			
				
	}
	private void find(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		String id = request.getParameter("id");
		System.out.println(id+"================================");
		Notice notice = nBiz.findByOne(id);
		String userString = JSON.toJSONString(notice);
		response.getWriter().append(userString);
		
	}
	
	private void query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		System.out.println("===================================");
		Notice notice = BeanUtils.asBean(request, Notice.class);
		User user = BeanUtils.asBean(request, User.class);
		String nPage = request.getParameter("nowPage");
		int pageSize = 6;  //每页显示页数
		request.setAttribute("noticeList", nBiz.find(notice,nPage,pageSize,user));
		request.getRequestDispatcher("ServerJsp/"+"notice.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
