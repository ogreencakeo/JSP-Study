<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	out.println(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_tpl_delete</title>
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
	<h2>Member Delete</h2>
	<form action="./action/member_delete_ok.jsp" method="post" autocomplete="off">
		<input type="hidden" name="id" value="<%=id %>" />
		<hr>
		<ul>
			<li><input class="input1" type="text" name="id" value="<%=id %>" readonly /> Readonly</li>
		</ul>
		<hr>
		<input type="submit" value="삭제" />
		<button onclick="location.href='<%=application.getAttribute("ROOTPATH") %>/member_control.jsp?action=list'; return false;">리스트 페이지</button>
	</form>
</body>
</html>