package ch11.logon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LogonDBBean {
	
	//LogonDBBean 전역 객체 생성 <- 한개의 객체만 생성해서 공유
	private static LogonDBBean instance = new LogonDBBean();
	
	//LogonDBBean 객체를 리턴하는 메소드
	public static LogonDBBean getInstance(){
		return instance;
	}
	
	private LogonDBBean(){}
	
	private Connection getConnection() throws Exception{
		
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:comp/env");
		DataSource ds= (DataSource) envContext.lookup("jdbc/TestDB");
		Connection conn = ds.getConnection();
		
		return ds.getConnection();
	}
	
	public void insertMember(LogonDataBean member){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		try{
			conn = getConnection();
			
			String orgPass = member.getPasswd();
			
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, orgPass);
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getReg_date());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getTel());
			pstmt.executeUpdate();
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
				if(pstmt != null) try {pstmt.close();}catch(SQLException ex){}
				if(conn != null) try { conn.close(); } catch(SQLException ex){} 
		}
	}
	
	//로그인 폼 처리(loginPro.jsp) 페이지의 사용자 인증 처리 및
	//회원 정보 수정/탈퇴를 사용자 인증(memberCheck.jsp)에서 사용하는 메소드
	public int userCheck(String id, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;
		
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement(
					"select passwd from member where id = ? ");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String dbpasswd = rs.getString("passwd");
				if(passwd.equals(dbpasswd))
					x=1;
				else
					x=0;
			}else
				x=-1;
		}catch(Exception ex){
			ex.printStackTrace();
		}finally {
			if(rs != null) try {rs.close(); } catch(SQLException ex){}
			if(pstmt != null)try{pstmt.close(); } catch(SQLException ex){}
			if(conn != null)try{conn.close();}catch(SQLException ex){}
		}
		
		return x;
	}
	
	//아이디 중복 확인(confirmId.jsp)에서 아이디의 중복여부를 확인하는 메소드
	public int confirmId(String id){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;
		
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select id from member where id = ?");
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) // 아이디 존재
				x=1; // 같은 아이디 있음
			else
				x=-1; // 같은 아이디 없음
			
		}catch(Exception ex){
			ex.printStackTrace();
		} finally{
			if(rs != null) try {rs.close();} catch(SQLException ex){}
			if(pstmt != null) try { pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		
		return x;
		
	}
	
	public ArrayList<LogonDataBean> getMember(){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		LogonDataBean data = null;
		
		ArrayList<LogonDataBean> result = new ArrayList<LogonDataBean>();
		
		try{
			conn=getConnection();
			
			pstmt = conn.prepareStatement("select * from member");
			
			rs= pstmt.executeQuery();
			
			while(rs.next()){
				data = new LogonDataBean();
				
				data.setId(rs.getString("id"));
				data.setPasswd(rs.getString("passwd"));
				data.setName(rs.getString("name"));
				data.setReg_date(rs.getTimestamp("reg_date"));
				data.setAddress(rs.getString("address"));
				data.setTel(rs.getString("tel"));
				
				result.add(data);
				
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		} finally{
			if(rs != null) try {rs.close();} catch(SQLException ex){}
			if(pstmt != null) try { pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		
		
		return result;
		
		
	}
	

}
