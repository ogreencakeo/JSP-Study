<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 클라이언트 세션 ID 출력
	String sid = session.getId();
	out.println(sid);
%>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Check</title>
</head>
<body>
	<a href="logout.jsp">로그아웃 페이지</a>
</body>
</html>