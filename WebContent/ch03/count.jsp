<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>카운트 실습하기</title>
</head>
<body>
	<h1>카운트 실습-접속할때 마다 증가하는</h1>
	<%!int globalCount=0; %>
	<% int localCount=0; %>
	<%
		globalCount++;
		localCount++;
	%>
	
	globalCount=<%= globalCount %>
	localCount=<%= localCount %>
</body>
</html>

                   