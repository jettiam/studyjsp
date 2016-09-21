<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String name=request.getParameter("userName");
	String iconSrc=request.getParameter("gender");
	
	session.setAttribute("name", name);
	session.setAttribute("iconSrc", iconSrc);
	
	response.sendRedirect("main.jsp");
%>
