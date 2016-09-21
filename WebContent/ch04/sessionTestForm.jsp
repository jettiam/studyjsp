<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	if(session.getAttribute("id")==null){ %>
	<form method="post" action="sessionTest.jsp">
		<div id="unauth">
		<dl>
			<dd>
				<label for="id">아이디</label>
				<input id="id" name="id" type="text" 
				placeholder="kingdora" autofocus required>
			</dd>
			<dd>
				<label for="pass">비밀번호</label>
				<input id="pass" name="pass" type="password"
					placeholder="1234" required>
			</dd>
			<dd>
				<input type="submit" value="로그인">
			</dd>
		</dl>
		</div>
	</form>
<%}else{ %> 
<form method="post" action="logout.jsp">
	<div id="auth">
	<dl>
		<dd>
			<%=session.getAttribute("id") %>님이 왔어요.
		</dd>
		<dd>
			<input type="submit" value="로그아웃">
		</dd>
	 </dl>	 	 
	 </div>
</form>
<% } %>