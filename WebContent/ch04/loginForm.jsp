<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
    
<h2>로그인 화면</h2>
<form method="post" action="tesLogin.jsp">
	<dl>
		<dd>
			<label for="id">ID: </label>
			<input id="id" name="id" type="text"
				placehodler="id..." autofocus required>
		</dd>
		<dd>
			<label for="password">Password: </label>
			<input id="password" name="password" type="text"
				required>
		</dd>
		<dd>
			<input type="submit" value="로그인">
		</dd>	
	</dl>
</form>