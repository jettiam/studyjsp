<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>jQuery Ajax 메소드 - load() 응답처리</title>

<script src="D:/1501015/studyjsp/WebContent/js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#b1").click(function() {
			$("#result").load("xhrTest1.jsp");
		});
	});
</script>
</head>
<body>
	<button id="b1">결과</button>
	<div id="result"></div>
</body>
</html>