<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%String contentPage=request.getParameter("CONTENTPAGE"); %>
<link rel="stylesheet" href="template.css"/>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<title>forward HTML5 양식으로 만들어보기</title>
</head>


<body>
	<header>
		<jsp:include page="top.jsp" flush="false" />
	</header>
	<div id="content">
		<section id="areaSub">
			<jsp:include page="left.jsp" flush="false"/>
		</section>
		<section id="areaMain">
			<jsp:include page="<%=contentPage %>" flush="false" />
		</section>
	</div>
	<footer>
		<jsp:include page="bottom.jsp" flush="false" />
	</footer>
</body>
</html>