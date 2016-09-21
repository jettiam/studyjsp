<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%request.setCharacterEncoding("utf-8"); %>

<% 	String userid=request.getParameter("id");
	String password=request.getParameter("password");
	
	if(userid.equals("가은")){
		if(password.equals("0000")){
			response.sendRedirect("main.jsp?id="+URLEncoder.encode(userid, "UTF-8"));
		}
		else{
			response.sendRedirect("loginForm.jsp");
		}
	}
	else{	
		response.sendRedirect("loginForm.jsp");
	}
	%>