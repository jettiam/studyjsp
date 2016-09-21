<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select_01=request.getParameter("scene1");
	
	session.setAttribute("select_01", select_01);
%>

<form action="scene3.jsp">
	<dl>
		<dd>
		다음 둘 중에 마음에 드는 것으로 하나만 선택해서 사야 해!
		</dd>
		<dd>
			<input id="scene2" name="scene2" type="radio" value="초코우유">
			<label for="scene2">초코 우유</label>
			<input id="scene2" name="scene2" type="radio" value="바나나 우유">
			<label for="scene2">바나나 우유</label>
		</dd>
		<dd>
			<input type="submit" value="다음">
		</dd>
		<img src="<%=session.getAttribute("iconSrc")%>">
	</dl>


</form>
