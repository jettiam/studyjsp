<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ex) 03</title>
<style>
#result{
	width: 500px;
	height: 200px;
	border: 5px solid black;
}
</style>
<script src="D:/1501015/studyjsp/WebContent/js/jquery-3.1.1.min.js"></script>
<script>
$(document).ready(function() {
	$("#submit").click(function(){
				
		$.ajax({
			type:"POST",
			url:"ex07-03Pro.jsp",
			data: { name: $("#name").val()},
			success: function(data){
				$("#result").html(data);
			}
		});	
	});
});
</script>
</head>

<body>
		<dl>
			<dd>
				<label class="name">이름</label>
				<input type="text" id="name">
			</dd>
			<dd>
				<button id="submit">처리</button>
			</dd>
		</dl>
	<div id="result"></div>
</body>
</html>