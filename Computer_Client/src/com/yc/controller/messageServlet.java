package com.yc.controller;

import java.io.IOException;
import java.text.NumberFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

import com.yc.bean.Comment;
import com.yc.bean.Notice;
import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.biz.CommentBiz;
import com.yc.biz.NoticeBiz;
import com.yc.biz.RepairBiz;
import com.yc.dao.BeanUtils;

/**
 * Servlet implementation class messageServlet
 */
@WebServlet("/mes.s")
public class messageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RepairBiz rBiz = new RepairBiz();
	private NoticeBiz nBiz = new NoticeBiz();
	private CommentBiz cBiz = new CommentBiz();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		if("NoticeMes".equals(op)){
			showNewMes(request,response);
		}else if("findNewInfrom".equals(op)){
			showNewInform(request,response);
		}else if("findNewRepair".equals(op)){
			showNewRepair(request,response);
		}else if("AllMsg".equals(op)){
			ShowServerAllMsg(request,response);
		}
	}

	private void ShowServerAllMsg(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		User user = (User) request.getSession().getAttribute("LoginedUser");
		Notice notice = BeanUtils.asBean(request, Notice.class);
		Repair repair = BeanUtils.asBean(request, Repair.class);
		Comment comment = BeanUtils.asBean(request, Comment.class);
		NumberFormat nf   =   NumberFormat.getPercentInstance();
		
		request.setAttribute("ServerMsg",nf.format(nBiz.findServerNum(notice,repair,comment,user)) );
		String JspName = request.getParameter("JspName");
		request.getRequestDispatcher("ClientJsp/"+JspName.substring(JspName.lastIndexOf("/")+1)).forward(request, response);
	}

	private void showNewRepair(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		User user = (User) request.getSession().getAttribute("LoginedUser");
		request.setAttribute("LoginRepairList", rBiz.findNewRepair(user));
		request.getRequestDispatcher("ClientJsp/LoginCRepair.jsp").forward(request, response);
	}

	private void showNewInform(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setAttribute("LoginInformList", nBiz.findNewInform());
		request.getRequestDispatcher("ClientJsp/LoginInform.jsp").forward(request, response);
	}

	private void showNewMes(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		User user = (User) request.getSession().getAttribute("LoginedUser");
		Notice notice = BeanUtils.asBean(request, Notice.class);
		Repair repair = BeanUtils.asBean(request, Repair.class);
		Comment comment = BeanUtils.asBean(request, Comment.class);
		request.setAttribute("InfromMes", nBiz.findNum(notice,repair,comment,user));
		String JspName = request.getParameter("JspName");
		System.out.println(request.getAttribute("InfromMes"));
		//System.out.println(JspName.substring(JspName.lastIndexOf("/")+1)+"====================--------------");获取请求页面的名字
		request.getRequestDispatcher("ClientJsp/"+JspName.substring(JspName.lastIndexOf("/")+1)).forward(request, response);
	}
	

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
