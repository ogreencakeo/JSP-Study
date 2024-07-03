<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 클라이언트 세션 ID 출력
	String sid = session.getId();
	out.println(sid);
	
	// 세션 객체 속성 저장
	String m_id = (String) session.getAttribute("m_id");
	String m_pw = (String) session.getAttribute("m_pw");
	
	// 로그인 기본 값
	boolean login = false;
	
	// 로그인 상태
	if((m_id != null) && (m_pw != null)){
		login = true;
	}
%>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
	<a href="login_check.jsp">로그인 체크</a>
</body>
</html>