<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script src="..\js\jquery-3.1.1.min.js"></script> 
<script src="login.js"></script>            

<%
	String id="";
	try{
		
		id = (String)session.getAttribute("id");
	%>
	<% if(id == null || id.equals("")){ %>
	
	<div id="status">
		<ul>
			<li><label for="id">���̵�</label>
				<input id="id" name="id" type="email" size="20"
				maxlength="50" placehorlder="panddos2@naver.com">
			<li><label for="passwd">��й�ȣ</label>
				<input id="passwd" name="passwd" type="passwd"
				size="20" placeholder="6~16�� ����/����" maxlength="16">
			<li class="label2">
				<button id="login">�α���</button>
				<button id="register">ȸ������</button>
		</ul>
	</div>	
	<% }else { %>
	
	<div id="status">
		<ul>
			<li><b><%=id %></b>���� �α��� �ϼ̽��ϴ�.
			<li class="label2"><button id="logout">�α׾ƿ�</button>
				<button id="update">ȸ�� ���� ����</button>
		</ul>
	</div>
    
    <%}}catch(Exception e){e.printStackTrace();} %>          