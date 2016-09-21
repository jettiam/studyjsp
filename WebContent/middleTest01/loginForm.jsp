<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form method="post" action="loginTest.jsp">>
	<dl>
		<dd>
			<label for="id">아이디</label>
			<input id="id" name="id" type="text" required>
		</dd>
		<dd>
			<label for="pass">비밀번호</label>
			<input id="pass" name="pass" type="text" required>
		</dd>
		<dd>
			<input type="submit" value="로그인">
		</dd>
	</dl>
</form>