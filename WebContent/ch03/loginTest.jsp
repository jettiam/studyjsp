<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8"); %>

<% String userid=request.getParameter("id");
	String password=request.getParameter("password");
	String welcomeText="";
	
	if(userid.equals("jsp") && password.equals("jjsspp")){
		welcomeText="환영합니다";
	}else{
		welcomeText="로그인 실패.";
	}
%>

<p> 안녕! <%=welcomeText%>