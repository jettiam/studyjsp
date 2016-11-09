
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import="java.sql.*" 
import="javax.sql.*" 
import="javax.naming.*" 

%>

<%
Connection conn = null;

try{
	Context initContext = new InitialContext();
	Context envContext = (Context) initContext.lookup("java:comp/env");

	DataSource ds= (DataSource) envContext.lookup("jdbc/TestDB");
	conn = ds.getConnection();

	if(conn!=null){
		out.println("마리아디비 커넥션 완료");
		conn.close();
	}

}catch(Exception e){
	out.println(e);
}


%>

