<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	Cookie cookie = new Cookie("id", "panddos2");
	cookie.setMaxAge(1);
	response.addCookie(cookie);
	
	out.println("쿠키가 생성되었습니다.");
%>

<form method="post" action="useCookie.jsp">
	<table>
		<tr>
			<td><input type="submit" value="생성된 쿠키 확인">
		</table>
</form>