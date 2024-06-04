<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="member.site.com.MemberVO" />
<jsp:setProperty name="member" property="*" />
<%
	out.println(member);	
%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	// 전달된 한 명의 회원 정보를 DB에 입력하는 순간
	db.insertDB(member);
	out.println("DB 입력 성공은? => " + db.insertDB(member)); // true
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert OK</title>
</head>
<body>
	<h2>입력하신 정보가 DB에 입력되었습니다.</h2>
	<hr>
		<ul>
			<li>아이디 : <jsp:getProperty name="member" property="id" /></li>
			<li>비밀번호 : <jsp:getProperty name="member" property="pw" /></li>
			<li>이름 : <jsp:getProperty name="member" property="name" /></li>
			<li>이메일 : <jsp:getProperty name="member" property="email" /></li>
			<li>전화번호 : <jsp:getProperty name="member" property="phone" /></li>
		</ul>
	<hr>
	<button onclick="location.href='<%=application.getAttribute("ROOTPATH") %>/member_control.jsp?action=list'">리스트 페이지</button>
</body>
</html>