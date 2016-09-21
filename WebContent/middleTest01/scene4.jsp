<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select_03[]=request.getParameterValues("scene3");
	
	session.setAttribute("select_03", select_03);
%>

<form action="sceneTest.jsp">
	<dl>
		<dd>
		자, 지금까지 뭘 골랐는지 한 번 체크 해봐
		</dd>
		<dd>
			<input id="scene1" name="scene1" type="radio" value="두부">
			<label for="scene1">두부</label>
			<input id="scene1" name="scene1" type="radio" value="순두부">
			<label for="scene1">순두부</label>
		</dd>
		<dd>
			<input id="scene2" name="scene2" type="radio" value="초코우유">
			<label for="scene2">초코 우유</label>
			<input id="scene2" name="scene2" type="radio" value="바나나 우유">
			<label for="scene2">바나나 우유</label>
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
    