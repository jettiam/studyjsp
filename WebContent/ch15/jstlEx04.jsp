<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/ch11/main.jsp" var = "url"/>
<h3>JSTL core 태그 예제 - forTokens</h3>

<c:forTokens var = "tech" items="금강불괴 허공답보 열양기공 천마군림보" delims=" ">
	<p>익혀야할 기술: <c:out value="${tech}"/>
</c:forTokens>


<c:out value="${url}"/>
<c:out value="${url}"/>
${url }

<c:redirect url="jstlEx01.jsp"/> if나 choose 안에서 사용한다.