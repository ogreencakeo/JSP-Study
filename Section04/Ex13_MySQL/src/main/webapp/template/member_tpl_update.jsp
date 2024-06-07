<%@page import="member.site.com.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<% 
	String id = request.getParameter("id"); 
	out.println(id);
%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	MemberVO member = db.getMember(id);
	out.println(member);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style>
	ul > li{
		line-height: 3rem;
		list-style: none;
	}
	.input1{
		width: 300px;
		height: 40px;
		background: #f0f0f0;
		border : 1px solid #666;
		padding-left: 10px;
	}
</style>
</head>
<body>
	<h2>Member Update</h2>
	<form action="./action/member_update_ok.jsp" method="post" autocomplete="pff">
		<hr>
		<ul>
			<li><input class="input1" type="text" name="id" value="superman" readonly /></li>
			<li><input class="input1" type="text" name="pw" value="1234" /></li>
			<li><input class="input1" type="text" name="name" value="슈퍼맨" /></li>
			<li><input class="input1" type="text" name="email" value="superman@gamil.com" /></li>
			<li><input class="input1" type="text" name="phone" value="010" /></li>
		</ul>
		<hr>
		<input type="submit" value="수정" />
		<button onclick="location.href='<%=application.getAttribute("ROOTPATH") %>/member_control.jsp?action=list'; return false;">리스트 페이지</button>
	</form>
</body>
</html>