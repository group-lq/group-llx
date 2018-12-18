package com.yc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.User;
import com.yc.dao.BeanUtils;
import com.yc.dao.GetMessageCode;
import com.yc.dao.MailUtils;



/**
 * Servlet implementation class MailServlet
 */
@WebServlet("/mail.s")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String random;
    private String code ;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");	
		 String op  = request.getParameter("op");
		 //System.out.println("================进来了吗");
		 if("getCode".equals(op)) {
			 sendCode(request,response);
		 }else if("getEmail".equals(op)) {
			 isCode(request,response);
		 }else if("getTelCode".equals(op)) {
			 sendTelCode(request,response);
		 }else if("isTelCode".equals(op)) {
			 isTelCode(request,response);
		 }
	      // 实际的逻辑是在这里
	    
		
	}

	private void isTelCode(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String Code1 = request.getParameter("Code1");
		Map<String,String> map = new HashMap<String,String>();
		if("".equals(Code1) && Code1.trim().isEmpty()) {
			map.put("checkMsg", "请填写手机验证码");
       	 	String checkMsg = JSON.toJSONString(map);
       	 	response.getWriter().append(checkMsg);
	       	return ;
		}
		if(!random.equals(Code1)) {
			map.put("checkMsg", "手机验证码错误");
		}
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
	}

	private void sendTelCode(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		User user = BeanUtils.asBean(request, User.class);
		
		random = (int) ((Math.random() * 9 + 1) * 100000) + "";
		GetMessageCode.execute(user,random);
		Map<String,String> map = new HashMap<String,String>();
		map.put("msg", "已发送");
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
	}

	private void isCode(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code1 = request.getParameter("code");
		if(code.equals(code1)) {
			response.sendRedirect("forgetMyPwd2.jsp");
		}else {
			request.setAttribute("msg", "验证码错误");
			request.getRequestDispatcher("forgetMyPwdEmail1.jsp").forward(request, response);
		}
	}

	private void sendCode(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			String email = request.getParameter("email");
			System.out.println(email+"email");
			Random r =new Random();
			int i=r.nextInt(10000);
			code=String.valueOf(i);
			MailUtils.sendMail(email, code);
			Map<String,String> map = new HashMap<String,String>();
			map.put("msg", "已发送");
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
