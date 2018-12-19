package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
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
		}		
	}
	
	private void show(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		Page page = BeanUtils.asBean(request, Page.class);
		
	/*	int start =(page.getPage()-1)*page.getRows() ;
		int end =page.getRows() ;
		String sql = "select * from repair limit ?,?";
		System.out.println(DBHelper.select(sql,start,end));
		PageData pageData = new PageData();
		pageData.setRows(DBHelper.select(sql,start,end));
		sql = "select count(1) cnt from repair";
		pageData.setTotal(DBHelper.uniqueValue(sql, "cnt"));*/
		String res = JSON.toJSONString(rBiz.findAll(page));
		response.getWriter().append(res);
	}

	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("LoginedUser");
		Repair repair = BeanUtils.asBean(request, Repair.class);
		//System.out.println("===================="+user.getUsername());
		//System.out.println("===================="+repair.getAddress());
		try {
			rBiz.add(repair,user);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("rmsg", e.getMessage());
		}finally{
			query(request,response);
		}		
	}
	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Page page = BeanUtils.asBean(request, Page.class);
		Repair repair = BeanUtils.asBean(request, Repair.class);
		System.out.println(repair.getRid());
		PageData pageData = new PageData();
		pageData.setTotal(rBiz.find(repair,page));
		String res = JSON.toJSONString(pageData);
		response.getWriter().append(res);
		//request.setAttribute("repairList", rBiz.find(repair));
		//request.getRequestDispatcher("ClientJsp/"+"Crepair.jsp").forward(request, response);		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
