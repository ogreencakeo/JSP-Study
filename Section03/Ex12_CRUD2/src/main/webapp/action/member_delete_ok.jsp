<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 넘어온 ID 값 받기
	String id = request.getParameter("id");
%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	// 삭제
	db.delelte(id);

	// 페이지 이동 -> response.sendRedirect()
	response.sendRedirect(  "http://localhost/Ex12_CRUD2/member_control.jsp?action=list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Delete Ok</title>
</head>
<body>

</body>
</html>