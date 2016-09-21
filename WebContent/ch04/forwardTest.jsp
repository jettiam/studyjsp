<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%  int age=Integer.parseInt(request.getParameter("age"));
	
	if(age>=20){
		response.sendRedirect("forwardMain.jsp");
	}
	else{
		response.sendRedirect("forwardForm.jsp");
	}
	%>