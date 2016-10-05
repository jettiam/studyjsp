<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>jQuery Ajax메소드 - $.get()</title>
<style>
#result{
	width: 500px;
	height: 200px;
	border: 5px double #6699FF;
}
</style>
<script src="D:/1501015/studyjsp/WebContent/js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#b1").click(function() {
			$.get("xhrTest3.txt", function( data, status ){
				var resultStr = "데이터: " + data + "\n처리상태: " + status ;
				$("#result").text(resultStr);
			});
		});
	});
</script>
</head>
<body>
	<button id="b1">결과</button>
	<div id="result"></div>
</body>
</html>