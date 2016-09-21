<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="scene2.jsp">
	<dl>
		<dd>
		다음 둘 중에 마음에 드는 것으로 하나만 선택해서 사야 해!
		</dd>
		<dd>
			<input id="scene1" name="scene1" type="radio" value="두부">
			<label for="scene1">두부</label>
			<input id="scene1" name="scene1" type="radio" value="순두부">
			<label for="scene1">순두부</label>
		</dd>
		<dd>
			<input type="submit" value="다음">
		</dd>
		<img src="<%=session.getAttribute("iconSrc")%>">
	</dl>


</form>

