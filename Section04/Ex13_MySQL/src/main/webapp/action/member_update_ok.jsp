<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="member.site.com.MemberVO" />
<jsp:setProperty name="member" property="*" />

<%
	// 테스트 출력
	out.println(member);
%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	// db.updateDB() 메서드 호출
	boolean res = db.updateDB(member);
	out.println(res);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Update Ok</title>
</head>
<body>
	<%
		if(!res){
			out.println("<h2>업데이트 실패!</h2>");
		}else{
			%>
				<h2>입력하신 정보로 DB 업데이트 되었습니다.</h2>
				<hr>
				<ul>
					<li>아이디 : <jsp:getProperty name="member" property="id" /></li>
					<li>비밀번호 : <jsp:getProperty name="member" property="pw" /></li>
					<li>이름 : <jsp:getProperty name="member" property="name" /></li>
					<li>이메일 : <jsp:getProperty name="member" property="email" /></li>
					<li>전화번호 : <jsp:getProperty name="member" property="phone" /></li>
				</ul>
				<hr>
				<button onclick="location.href='<%=application.getAttribute("ROOTPATH") %>/member_control.jsp?action=list';">리스트 페이지</button>
			<%
		}
	%>
</body>
</html>