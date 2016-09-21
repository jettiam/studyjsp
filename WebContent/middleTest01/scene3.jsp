<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select_02=request.getParameter("scene2");
	
	session.setAttribute("select_02", select_02);
%>

<form action="scene4.jsp">
	<dl>
		<dd>
		다음 둘 중에서는 마음에 드는 것을 모두 사오렴.
		</dd>
		<dd>
			<input id="scene3" name="scene3" type="checkbox" value="돼지고기">돼지고기
			<input id="scene3" name="scene3" type="checkbox" value="닭고기">닭고기
			<input id="scene3" name="scene3" type="checkbox" value="소고기">소고기
			<input id="scene3" name="scene3" type="checkbox" value="오리고기">오리고기
		</dd>
		<dd>
			<input type="submit" value="다음">
		</dd>
		<img src="<%=session.getAttribute("iconSrc")%>">
	</dl>


</form>
    