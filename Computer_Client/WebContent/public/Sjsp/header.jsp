<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	 if(request.getAttribute("repairInformList") == null){
		request.getRequestDispatcher("../Sheader.s?op=repairInform").forward(request, response);
	 } 
	%>