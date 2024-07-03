<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 삭제 전 출력
	out.println(session.getAttribute("m_id")); // superman
	out.println(session.getAttribute("m_pw")); // 1234
	
	// 세션 객체 초기화 (속성 삭제)
	session.removeAttribute("m_id");
	session.removeAttribute("m_pw");
	out.println("<hr />");
	
	// 삭제 후 출력
	out.println(session.getAttribute("m_id")); // null
	out.println(session.getAttribute("m_pw")); // null
	
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<h2>Member Logout</h2>
	<hr />
	<ul>
		<li>안전하게 로그아웃 되었습니다.</li>
	</ul>
	<hr />
	
	<button onclick="location.href='./login_form.jsp';">로그인 페이지</button>
</body>
</html>