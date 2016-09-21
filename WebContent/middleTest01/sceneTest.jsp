<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String result_01=request.getParameter("scene1");
	String result_02=request.getParameter("scene2");
	for(int i=0; i<4; i++){
	String result_03[i]=request.getParameter("scene3")[i];
	}
	
	if(result_01.equals(session.getAttribute("select_01"))){
		if(result_02.equals(session.getAttribute("select_02"))){
			
			for(int i=0; i<4; i++){
				if(session.getAttribute("select_03")[i].equals("result_03")[i]){
					continue;
				}else break;
			}
			
			String ending="정말 잘했어. 그럼 부탁할게!";
			session.getAttribute("ending", ending);
		}
	}else{
		String ending2="아직은 좀 더 연습이 필요한 것 같구나. 엄마랑 같이 가자!";
		session.getAttribute("ending", ending2);
	}
	
%>
	