<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
<!--
	img{
		border: 0;
		width: 70px;
		height: 30;
	}
	.blue{
		width: 50px;
		height: 50px;
		background-color: blue;
	}
-->
</style>

<%
	String name=request.getParameter("name");
	String selectedColor=request.getParameter("selectedColor");
%>

<h2>포워딩되는 페이지 - <%= selectedColor+".jsp"%></h2>
<b><%=name %></b>님의 좋아하는 색은 "<%=selectedColor %>"이고
자기탐구와 내적성장을 상징하는 색입니다. <br>
<div class="blue"></div>