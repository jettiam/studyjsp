<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>jQuery Ajax 메소드 - $.post()</title>
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
		$.post("process.jsp", {
			name: "kimgaeun",
			stus:"homebody"
		}, 
		function(data, status){
			if(status="success")
				$("#result").html(data);
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