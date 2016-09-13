<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>로그인 흉내내기♥</h2>
<form method="post" action="loginTest.jsp">
	<dl>
		<dd>
			<label for="id">아이디: </label>
			<input id="id" name="id" type="text"
				placehodler="id..." autofocus required>
		</dd>
		<dd>
			<label for="password">비밀번호: </label>
			<input id="password" name="password" type="text"
				required>
		</dd>
		<dd>
			<input type="submit" value="로그인">
		</dd>
	
	</dl>
</form>