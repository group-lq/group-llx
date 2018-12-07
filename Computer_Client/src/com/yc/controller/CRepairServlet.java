package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.RepairBiz;
import com.yc.dao.BeanUtils;


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
		}		
	}
	
	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("LoginedUser");
		Repair repair = BeanUtils.asBean(request, Repair.class);
		System.out.println("===================="+user.getUsername());
		System.out.println("===================="+repair.getAddress());
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
		Repair repair = BeanUtils.asBean(request, Repair.class);
		request.setAttribute("repairList", rBiz.find(repair));
		request.getRequestDispatcher("ClientJsp/"+"Crepair.jsp").forward(request, response);		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
