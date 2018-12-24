package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.yc.bean.News;
import com.yc.bean.Page;
import com.yc.bean.PageData;
import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.RepairBiz;
import com.yc.dao.BeanUtils;
import com.yc.dao.DBHelper;


@WebServlet("/crepair.s")
public class CRepairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RepairBiz rBiz = new RepairBiz();   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");	
		if("add".equals(op)){
			add(request,response);
		}else if("query".equals(op)){
			query(request,response);
		}else if("show".equals(op)){
			show(request,response);
		}else if("query1".equals(op)){
			query1(request,response);
		}else if("sendRepair".equals(op)){
			add(request,response);
		}		
	}
	
	

	private void query1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===================================");
		Page page = BeanUtils.asBean(request, Page.class);
		Repair repair = BeanUtils.asBean(request, Repair.class);
		System.out.println(page.getPage()+":"+page.getRows());
		String res = JSON.toJSONString(rBiz.find1(repair,page));
		response.getWriter().append(res);
		//request.setAttribute("repairList", rBiz.find(repair));
		//request.getRequestDispatcher("ClientJsp/"+"Crepair.jsp").forward(request, response);		
	}


	private void show(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		Page page = BeanUtils.asBean(request, Page.class);
		String res = JSON.toJSONString(rBiz.findAll(page));
		response.getWriter().append(res);
	}

	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("LoginedUser"); //当前登录的用户
		if(user == null) {
			response.getWriter().append("notLogin");
			return;
		}
		Repair repair = BeanUtils.asBean(request, Repair.class);
		String msg = null;
		try {
			rBiz.add(repair,user);
			msg = "您的情况已上报,请耐心等待..";
		} catch (BizException e) {
			e.printStackTrace();
			msg = e.getMessage();
		}finally{
			//show(request,response);
			String res = JSON.toJSONString(msg);
			response.getWriter().append(res);
		}		
	}
	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===================================");
		Repair repair = BeanUtils.asBean(request, Repair.class);
		String nPage = request.getParameter("nowPage");
		int pageSize = 6;  //每页显示页数
		request.setAttribute("repairList", rBiz.find(repair,nPage,pageSize));
		request.getRequestDispatcher("ServerJsp/"+"Srepair.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
