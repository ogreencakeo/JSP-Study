<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
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
	<h2>Member Insert</h2>
	<form action="./action/member_insert_ok.jsp" method="POST" autocomplete="off">
		<hr>
			<ul>
				<li><input class="input1" type="text" name="id" placeholder="아이디 입력" required></li>
				<li><input class="input1" type="password" name="pw" placeholder="비밀번호 입력" required></li>
				<li><input class="input1" type="text" name="name" placeholder="이름 입력" required></li>
				<li><input class="input1" type="text" name="email" placeholder="이메일 입력" required></li>
				<li><input class="input1" type="text" name="phone" placeholder="전화번호 입력" required></li>
			</ul>
		<hr>
		<input type="submit" value="입력">
		<button onclick="location.href='<%= request.getAttribute("ROOTPATH") %>/member_control.jsp?action=list'">리스트 페이지</button>
	</form>
</body>
</html>