package controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.dao.ly.BeanUtils;
import com.yc.dao.ly.DBHelper;

import bean.User;
import biz.BizException;
import biz.UserBiz;

@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz uBiz = new UserBiz();
	
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	   request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		if("login".equals(op)){
			login(request,response);
		}else if("query".equals(op)){
			query(request,response);
		}else if("add".equals(op)){
			add(request,response);
		}else if("find".equals(op)){
			find(request,response);
		}else if("save".equals(op)){
			save(request,response);
		}
		
	}

	private void save(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		response.setCharacterEncoding("utf-8");
		User user = BeanUtils.asBean(request, User.class);
		String msg;
		try {
			uBiz.save(user);
			msg = "用户信息保存成功!";
		} catch (BizException e) {
			e.printStackTrace();
			msg = e.getMessage();
		}
		response.getWriter().append(msg);
	}

	private void find(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
		String id = request.getParameter("id");
		
		User user = uBiz.findByOne(id);
		String userString = JSON.toJSONString(user);
		response.getWriter().append(userString);
	
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("name"));
		
		//request.getContentType();
		User user = BeanUtils.asBean(request, User.class);
		String repwd = request.getParameter("repwd");
		try {
			uBiz.add(user,repwd);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
		}finally{
			query(request,response);
		}
	}

	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		
		User user = BeanUtils.asBean(request, User.class);
		System.out.println(user.getName());
		System.out.println(request.getParameter("name"));
		request.setAttribute("userList", uBiz.find(user));
		request.getRequestDispatcher("manage-user.jsp").forward(request, response);;
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
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		if(user == null ){
			request.setAttribute("msg", "用户名或密码错误！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("LoginedUser",user);
			response.sendRedirect("index.jsp");
			/*recordLastTime(request,response,user);
			recordCount(request,response,user);*/
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
/*	private void recordCount(HttpServletRequest request, HttpServletResponse response,User user){
		Long userId = user.getId();
		Timestamp t = new Timestamp(System.currentTimeMillis());
		String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(t);
		String loginIp = request.getRemoteAddr();
		List<Object> params = new ArrayList<Object>();
		params.add(userId);
		params.add(time);
		params.add(loginIp);
		int count = dbhelper.update("insert into user_login_record(userId,time,loginIp) values(?,?,?)", params);
		//String msg2 = count>0?"":"";
		List<Map<String, String>> ret2= dbhelper.find("select count(userId) from user_login_record", null);
		request.getSession().setAttribute("count", ret2.get(0).get("count(userid)"));
	};
	private void recordLastTime(HttpServletRequest request, HttpServletResponse response
			,User user) {
		Long userId = user.getId();
		List<Object> params = new ArrayList<Object>();
		params.add(userId);
		List<Map<String, String>>  record = dbhelper.find("select max(time) from user_login_record where userId = ?", params);
		String lastTime = record.get(0).get("max(time)");
		List<Object> params2 = new ArrayList<Object>();
		params2.add(lastTime);
		List<Map<String, String>>  record2 =dbhelper.find("select loginIp from user_login_record where time = ?", params2);
		String loginIp = record2.get(0).get("loginip");
		request.getSession().setAttribute("Time", lastTime);
		request.getSession().setAttribute("LastLoginIp", loginIp);
	}*/

}
