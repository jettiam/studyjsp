<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	
	if(id.equals("normalUser") && pass.equals("1234")){
		response.sendRedirect("settingForm.jsp");
	}
	else if(id.equals("hardWorker")&&pass.equals("abcd")){
		response.sendRedirect("settingForm.jsp");
	}
	else{
		response.sendRedirect("loginForm.jsp");
	}
%>