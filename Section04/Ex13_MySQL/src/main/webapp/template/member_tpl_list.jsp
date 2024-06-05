<%@page import="member.site.com.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />

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
<script>
	function deleteAllonClick() {
		const res = confirm("전체 삭제하시겠습니까?");
		if(res){
			window.location.href = "./action/member_deleteAll_ok.jsp";
		}
	}
</script>
</head>
<body>
	<h2>Member List</h2>
	<hr>
	<ul>
		<li>superman(슈퍼맨) : superman@gmail.com, 010-111-111, 1111</li>
	</ul>
	<hr>
	<button onclick="location.href='<%= application.getAttribute("ROOTPATH") %>/member_control.jsp?action=insert';">회원 입력</button>
	<button onclick="deleteAllonClick();">전체 삭제</button>
</body>
</html>