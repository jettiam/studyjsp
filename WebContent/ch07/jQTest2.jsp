<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>jQuery 셀렉터와 메소드를 사용한 엘리먼트의 내용변경</title>
<script src="D:/1501015/studyjsp/WebContent/js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#b1").click(function() {
			$("#b2").text($("p").text());
		});
		
		$("#b2").click(function() {
			$("#display").html("<img src='picture.jpg' />");
		});
	});	
</script>
</head>
<body>
	<p>이미지 표시</p>
	<button id="b1">버튼 레이블 변경</button>
	<div id="display"></div>
	<button id="b2">버튼</button>
</body>
</html>