<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>Response 객체 예제 - sendRedirect() 메소드의 사용</h2><%--출력버퍼에 추가--%>
현재 페이지는 <b>reponseRedirect.jsp</b>페이지입니다. <%--출력버퍼에 추가--%>
<%response.sendRedirect("responseRedirected.jsp");%><%--출력버퍼비움--%>