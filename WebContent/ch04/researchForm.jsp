<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>설문조사</h2>
<form method="post" action="researchTest.jsp">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input id="name" name="name" type="text"
				placeholder="김가은" autofocus required>
		</dd>
		<dd>
			<legend>성별</legend> <% //id가 같은 radio 버튼끼리 중복선택이 되지 않습니다. %>
			<input id="gender" name="gender" type="radio" value="m" checked>
			<label for="gender">남</label>
			<input id="gender" name="gender" type="radio" value="f">
			<label for="gender">여</label>
		</dd>
		<dd>
			<legend>좋아하는 계절</legend>
			<input id="season" name="season" type="checkbox" value="봄">봄
			<input id="season" name="season" type="checkbox" value="여름">여름
			<input id="season" name="season" type="checkbox" value="가을">가을
			<input id="season" name="season" type="checkbox" value="겨울">겨울
			<br>
			<br>
		</dd>
		<dd>
			<input type="submit" value="전송">
		</dd>
	</dl>


</form>