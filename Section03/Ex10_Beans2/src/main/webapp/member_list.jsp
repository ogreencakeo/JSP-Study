<%@page import="member.test.com.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="db" class="member.test.com.MemberDB" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<style>
	ul>li{
		line-height: 2rem;
	}
</style>
</head>
<body>
	<h2>Member List</h2>
	<hr>
	<ul>
		<%
			out.println("<p>현재 사이즈 : " + db.getSize() + "</p>");
			for(Member m :  db.getList()){
				out.println("<li>" + m.getId() + ", " + m.getPw() 
						+ ", " + m.getName() + ", " + m.getEmail() 
						+ ", " +m.getPhone() + "</li>");
			}
		%>
		<!-- li>superman(슈퍼맨) : superman@gmail.com, 010-1234, 비밀번호(1234)</li -->
	</ul>
	<hr>
	<button onclick="location.href='member_join.jsp'">회원 입력</button>
</body>
</html>