<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<form action="elEx2.jsp" method="post">
	<ul>
		<li><label for="name">이름</label>
			<input type="text" id="name" name="name" value="${param['name']}">
			<input type="submit" value="확인">
		<li><p>이름은: ${param.name}입니다.
	</ul>
</form>