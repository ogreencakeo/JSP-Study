<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="member.site.com.MemberVO" />
<jsp:setProperty name="member" property="*" />
<%
	// 테스트 출력
	// out.println(member.getId() + "<br>");
	// out.println(member.getPw() + "<br>");
	// out.println(member.getName() + "<br>");
	// out.println(member.getEmail() + "<br>");
	// out.println(member.getPhone() + "<br>");
	
	// toString() 메서드 만들어 놓고 출력
	out.println(member + "<br>");
%>
<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	// db.update(member); // DB에 수정하는 순간
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>