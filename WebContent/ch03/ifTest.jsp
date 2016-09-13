<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 폼으로부터 넘어온 데이터의 한글이 깨지지 않게 처리 --%>
<% request.setCharacterEncoding("utf-8");%>

<h2>if-else문 예제- 좋아하는 색 선택</h2>

<%--입력한 값을 얻어내서 처리 --%>
<% // ifTestForm.jsp의 10, 14라인의 파라미터 변수 name과 color의 값을 얻어냄
	String name=request.getParameter("name");
	String color=request.getParameter("color");
	String selectColor="";//지역 변수 초기화
	String imgSrc="";
	//if문을 사용해서 clolor 파라미터 변수로부터 얻어낸 값을 가지고,
	//select Color 변수에 넣을 값을 결정
	if (color.equals("blue")) {//두개의 문자열이 같은가를 비교
		selectColor="파랑색";
		imgSrc="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRAlBRPNMoY6S0QnrA1VSszD7sJ2kFw1XUznLkMsr34wsLMQn0jUCEIrasm";
	} else if(color.equals("green")){
		selectColor="초록색";
		imgSrc="http://cfile219.uf.daum.net/image/186DCF38509DE17317CD9E";
	} else if(color.equals("red")) {
		selectColor="빨강색";
		imgSrc="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSmmvogFWJeVXoHfFxhVr_Kcj_jcUty94Rv4Sb5WXCfniXDidn_eMwY8wyF";
	} else {
		selectColor="기타색";
		imgSrc="http://cfs14.tistory.com/upload_control/download.blog?fhandle=YmxvZzIxMjgyN0BmczE0LnRpc3RvcnkuY29tOi9hdHRhY2gvMC8yLmpwZw%3D%3D";
	}
%>

<%-- 결과 출력 --%>
<%=name%>님이 선택한 색은 <%=selectColor%>입니다. <p>
선택한 색: <br>
<img src="<%=imgSrc%> " border="0" width="500px"; height="350px";>