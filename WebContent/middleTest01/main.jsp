<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="scene1.jsp">
<span>
<%=session.getAttribute("name")%>! <br>
오늘은 엄마 심부름 좀 해주겠니? <br>
몇 가지 장을 봐야하니 <br>
잘 기억해. <br>
</span>
<span>
<img src="<%=session.getAttribute("iconSrc")%>">
</span>
<br>
<input type="submit" value="다음"> 

</form>