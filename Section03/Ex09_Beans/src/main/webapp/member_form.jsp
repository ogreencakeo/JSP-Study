<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Form</title>
<style>
	ul > li {
		list-style: none;
		line-height: 3rem;
	}
	.input1, .input2{
		width : 40%;
		padding : 10px;
		background: whitesmoke;
	}
</style>
</head>
<body>
	<h2>Member Login</h2>
	<form action="./member_form_ok2.jsp" method="POST" autocomplete="off">
		<hr>
		<ul>
			<li><input class="input1" type="text" name="memberID" placeholder="아이디 입력" required></li>
			<li><input class="input2" type="text" name="memberPW" placeholder="비밀번호 입력" required></li>
		</ul>
		<hr>
		<!-- Submit -->
		<input type="submit" value="전송">
	</form>
</body>
</html>