package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.RepairBiz;
import com.yc.dao.BeanUtils;


@WebServlet("/repair.s")
public class RepairServlet extends HttpServlet {
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
		}else if("find".equals(op)){
			find(request,response);
		}else if("save".equals(op)){
			save(request,response);
		}		
	}
	private void save(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		response.setCharacterEncoding("utf-8");
		Repair repair = BeanUtils.asBean(request, Repair.class);
		String msg;
		try {
			rBiz.save(repair);
			msg = "用户信息保存成功!";
		} catch (BizException e) {
			e.printStackTrace();
			msg = e.getMessage();
		}
		response.getWriter().append(msg);
	}
	private void find(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		String id = request.getParameter("id");
		System.out.println(id+"================================");
		Repair repair = rBiz.findByOne(id);
		String userString = JSON.toJSONString(repair);
		response.getWriter().append(userString);
		
	}

	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("LoginedUser");
		
		Repair repair = BeanUtils.asBean(request, Repair.class);		
		try {
			rBiz.add(repair,user);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("rMsg", e.getMessage());
		}finally{
			query(request,response);
		}		
	}
	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Repair repair = BeanUtils.asBean(request, Repair.class);
		System.out.println("rid==============:"+repair.getRid());
		request.setAttribute("repairList", rBiz.find(repair));
		request.getRequestDispatcher("ServerJsp/"+"repair.jsp").forward(request, response);		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
