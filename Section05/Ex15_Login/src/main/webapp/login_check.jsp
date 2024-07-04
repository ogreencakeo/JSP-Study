<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    

<%
	String sid = session.getId();
	out.println(sid);
	
	// 데이터베이스 회원 정보
	String db_id = null;
	String db_pw = null;
	String db_name = null;
	
	// 넘어온 값 받기
	String m_id = request.getParameter("id");
	String m_pw = request.getParameter("pw");
	
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	// DB 정보
	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/mydb";
	String dbID = "root";
	String dbPW = "1234";
	
	// DB 연동에 필요한 변수들 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName(dbDriver);
		conn = DriverManager.getConnection(dbUrl, dbID, dbPW);
	}
	catch(SQLException ex){ ex.printStackTrace(); }
	catch(Exception e){ e.printStackTrace(); }
	finally{
		// DB 연동 4단계 (close)
		if( rs != null )try{ rs.close(); }catch(SQLException ex){}
		if( pstmt != null )try{ pstmt.close(); }catch(SQLException ex){}
		if( conn != null )try{ conn.close(); }catch(SQLException ex){}
	}
	
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	// 아이디 및 비밀번호
	if(m_id.isEmpty() || m_pw.isEmpty()){
		out.println(
			"<script>" +
			"alert('아이디와 비밀번호를 입력해주세요!');" +
			"history.back();" +
			"</script>"
		);
	}
%>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Login Check</title>
</head>
<body>
	<%
		// 로그인 인증 및 세션 값 설정
		if((m_id.equals(db_id)) && (m_pw.equals(db_pw))){
			
			// id, pw 맞으면 세션 객체 속성(세션 변수) 셋팅
			session.setAttribute("m_id", m_id);
			session.setAttribute("m_pw", m_pw);
			
			// 출력
			out.println(session.getAttribute("m_id") + "(" + session.getAttribute("m_pw") + ") 회원님 방문을 환영합니다.");
			
		}else{
			out.println("먼저 ID/PW 정보를 확인하고 로그인을 해주세요!");
		}
	%>
	<hr/>
	<ul>
		<li>현재 설정된 세션 아이디 : <%=session.getAttribute("m_id") %></li>
		<li>현재 설정된 세션 비밀번호 : <%=session.getAttribute("m_pw") %></li>
	</ul>
	<hr>
	<button onclick="location.href='./login_form.jsp';">로그인 페이지</button>
</body>
</html>