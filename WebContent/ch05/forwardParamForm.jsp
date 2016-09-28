<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>포워딩될 페이지에 파라미터값 전달하기 예제</h2>
<form method="post" action="forwardParamTo.jsp">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input id="name" name="name" type="text"
				placeholder="김가은" autofocus required>
		</dd>
		<dd>
			<label for="color">색선택</label>
			<select id="color" name="color" required>
				<option value="blue" selected>파랑색
				<option value="green">초록색
			</select>
		</dd>
		<dd>
			<input type="submit" value="확인">
		</dd>
	</dl>
</form>
