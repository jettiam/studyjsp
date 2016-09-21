<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form method="post" action="setting.jsp">
	<dl>
		<dd>
			<label for="userName">이름</label>
			<input id="userName" name="userName" type="text" required>
		</dd>
		<dd>
			<label for="userIcon">캐릭터</label>
			<input id="gender" name="gender" type="radio" value="boy.png" checked>
			<label for="gender"><img src="boy.png"></label>
			<input id="gender" name="gender" type="radio" value="girl.png">
			<label for="gender"><img src="girl.png"></label>
		</dd>
		<dd>
			<input type="submit" value="확인">
		</dd>
	</dl>
</form>