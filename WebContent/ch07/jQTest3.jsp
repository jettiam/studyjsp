<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>jQuery 이벤트처리</title>
<script src="D:/1501015/studyjsp/WebContent/js/jquery-3.1.1.min.js"></script>
<script>
$(document).ready(function() {
	$("p").mouseenter(function() {
		$(this).text("왔네요 마우스포인터 :)");
	});
	
	$("p").mouseleave(function() {
		$(this).text("돌아와요 마우스포인터 :(");
	});
		
	$("button").dblclick(function() {
		$(this).css("background-color", "#cccccc");
	});
});
</script>
</head>
<body>
	<p>마우스 포인터를 여기에!!</p>
	<button>더블클릭 하세요 :)</button>
</body>
</html>