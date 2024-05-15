<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Join</title>
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
	<h2>Member Join</h2>
	<form action="./member_join_ok.jsp" method="POST" autocomplete="off">
		<hr>
		<ul>
			<li><input class="input1" type="text" name="id" placeholder="아이디 입력" required></li>
			<li><input class="input2" type="password" name="pw" placeholder="비밀번호 입력" required></li>
			<li><input class="input2" type="text" name="name" placeholder="이름 입력" required></li>
			<li><input class="input2" type="text" name="email" placeholder="이메일 입력" required></li>
			<li><input class="input2" type="text" name="phone" placeholder="전화번호 입력" required></li>

		</ul>
		<hr>
		<!-- Submit -->
		<input type="submit" value="전송">
		<button onclick="location.href='member_list.jsp'">회원 리스트</button>
	</form>
</body>
</html>