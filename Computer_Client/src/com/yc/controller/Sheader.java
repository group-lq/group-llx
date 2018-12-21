package com.yc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.Repair;
import com.yc.biz.RepairBiz;
import com.yc.dao.BeanUtils;

/**
 * Servlet implementation class Sheader
 */
@WebServlet("/Sheader.s")
public class Sheader extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RepairBiz rBiz = new RepairBiz(); 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");	
		if("repairInform".equals(op)){
			repairInform(request,response);
		}
	}


	private void repairInform(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		Repair repair = BeanUtils.asBean(request, Repair.class);
		
		request.setAttribute("repairInformList", rBiz.findStaff(repair));
		request.getRequestDispatcher("public/"+"header.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
