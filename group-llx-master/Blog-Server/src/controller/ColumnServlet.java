package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.dao.ly.BeanUtils;

import bean.Columns;
import biz.BizException;
import biz.ColumnsBiz;


@WebServlet("/column.s")
public class ColumnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if("query".equals(op)){
			query(request,response);
		}else if("add".equals(op)){
			add(request,response);
		}else if("delete".equals(op)){
			add(request,response);
		}
	}

	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ColumnsBiz cBiz = new ColumnsBiz();
		Columns column = BeanUtils.asBean(request, Columns.class);
		try {
			cBiz.add(column);
		} catch (BizException e) {
			e.printStackTrace();
		}finally{
			query(request,response);
		}
		
	}
	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ColumnsBiz cBiz = new ColumnsBiz();
		
		request.setAttribute("ListColumn", cBiz.findAll(request,response));
		request.getRequestDispatcher("category.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
