package com.yc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.UserBiz;
import com.yc.dao.BeanUtils;
import com.yc.dao.GetMessageCode;
import com.yc.dao.RegexUtils;


@WebServlet("/cuser.s")
public class CUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz uBiz = new UserBiz();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");	
		if("Clogin".equals(op)){
			login(request,response);
		}else if("query".equals(op)){
			query(request,response);
		}else if("checkTel".equals(op)){
			showTelMsg(request,response);
		}else if("checkEmail".equals(op)){
			showEmailMsg(request,response);
		}else if("checkName".equals(op)){
			showNameMsg(request,response);
		}else if("checkPwd".equals(op)){
			showPwdMsg(request,response);
		}else if("checkRetPwd".equals(op)){
			showRetPwdMsg(request,response);
		}else if("register".equals(op)){
			Register(request,response);
		}else if("isCode2".equals(op)){
			isCode2(request,response);
		}
	}

	

	



	private void isCode2(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String Code =  (String)request.getSession().getAttribute("picCode");//回话中的验证码
		String Code2 = request.getParameter("Code2");
		System.out.println(Code+"============="+Code2);
		Map<String,String> map = new HashMap<String,String>();
		
		if("".equals(Code2) && Code2.trim().isEmpty()) {
			map.put("checkMsg", "请填写验证码");
       	 	String checkMsg = JSON.toJSONString(map);
       	 	response.getWriter().append(checkMsg);
	       	return ;
		}
		if(!Code.equalsIgnoreCase(Code2)) {
			map.put("checkMsg",  "验证码错误!");
	    }
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
	}

	private void Register(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		User user = BeanUtils.asBean(request, User.class);
		List<List<Object>> list = uBiz.addUser(user);
		if(list != null ) {
			request.getRequestDispatcher("register1.jsp").forward(request, response);
		}
	}
	private void showRetPwdMsg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		User user = BeanUtils.asBean(request, User.class);
		String retPwd = request.getParameter("retPwd");
		Map<String,String> map = new HashMap<String,String>();
		if(retPwd != user.getPwd()) {
			map.put("checkRetMsg", "确认密码与密码不一致");
		}
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
		
	}
	private void showPwdMsg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		User user = BeanUtils.asBean(request, User.class);
		Map<String,String> map = new HashMap<String,String>();
		if("".equals(user.getPwd()) && user.getPwd().trim().isEmpty()){
			map.put("checkMsg", "请填写密码!");
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
			return ;
		}
		if(user.getPwd().length() >=16 || user.getPwd().length()<=8) {
			map.put("checkMsg", "密码长度要在8-16位之间") ;
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
			return;
		}
		if(!RegexUtils.checkPwd(user)){
			map.put("checkMsg", "由数字和字母组成，并且要同时含有数字和字母");
		}
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
		
	}
	private void showNameMsg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		User user = BeanUtils.asBean(request, User.class);
		Map<String,String> map = new HashMap<String,String>();
		if("".equals(user.getUsername()) && user.getUsername().trim().isEmpty()){
			map.put("checkMsg", "请填写用户名!");
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
			return;
		}
		if(!RegexUtils.checkUserName(user)){
			map.put("checkMsg",  "用户名请使用中文,字母或数字组成") ;
		}else{
			user = uBiz.findByName(user);
			if(user != null){
				map.put("checkMsg", "该用户已注册,请重新输入!");
			}
				
		}
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
		
	}
	private void showEmailMsg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		User user = BeanUtils.asBean(request, User.class);
		Map<String,String> map = new HashMap<String,String>();
		if("".equals(user.getEmail()) && user.getEmail().trim().isEmpty()){
			map.put("checkMsg",   "请填写邮箱!");
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
			return;
		}
		if(!RegexUtils.checkEmail(user)){
			map.put("checkMsg",   "邮箱格式错误!");
		}
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);
	}

	private void showTelMsg(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		User user = BeanUtils.asBean(request, User.class);
		Map<String,String> map = new HashMap<String,String>();
		if("".equals(user.getTel()) && user.getTel().trim().isEmpty()){
			map.put("checkMsg",   "请填写手机号!");
			
			String checkMsg = JSON.toJSONString(map);
			response.getWriter().append(checkMsg);
			return;
		}
		if(!RegexUtils.checkMobileNumber(user)){
			map.put("checkMsg",   "手机格式错误!");
			
		}
		String checkMsg = JSON.toJSONString(map);
		response.getWriter().append(checkMsg);	
	}

	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		User user = BeanUtils.asBean(request, User.class);
		request.setAttribute("userList", uBiz.find(user));
		request.getRequestDispatcher("ClientJsp"+"/manage-user.jsp").forward(request, response);
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");			
		User user = null;
		try {
			user = uBiz.login(username, userpwd);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("ClientJsp/Clogin.jsp").forward(request, response);
			return;
		}
		
		if(user == null ){
			request.setAttribute("msg", "用户名或密码错误！");
			request.getRequestDispatcher("ClientJsp/"+"Clogin.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("LoginedUser",user);				
			response.sendRedirect("ClientJsp/"+"index.jsp");
		}
}

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
