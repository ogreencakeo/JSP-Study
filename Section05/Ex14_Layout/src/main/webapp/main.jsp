<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="css/layout.css">
</head>
<body>
	<div class="wrap">
		<header>
			<div class="top-logo">Logo</div>	
			<div class="top-banner">Banner</div>
		</header>
		<nav>
			<ul>
				<li class="memnu-link"><a href="#">Home</a></li>
				<li class="memnu-link"><a href="#">게시판</a></li>
				<li class="memnu-link"><a href="#">회원가입</a></li>
				<li class="memnu-link"><a href="#">로그인</a></li>
			</ul>
		</nav>
		<section>
			<table border=1 width="100%">
				<caption>Member List</caption>
				<colgroup>
					<col width="20%">
					<col width="10%">
					<col width="20%">
					<col width="25%">
					<col width="25%">
				</colgroup>
				<thead>
					<tr>
						<th>ID</th>
						<th>Password</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>superman</td>
						<td>1234</td>
						<td>슈퍼맨</td>
						<td>superman@gmail.com</td>
						<td>010-1111-1111</td>
					</tr>
					<tr>
						<td>batman</td>
						<td>1234</td>
						<td>배트맨</td>
						<td>batman@gmail.com</td>
						<td>010-1111-1111</td>
					</tr>
				</tbody>
			</table>
			<div style="padding-top: 26px">
				<button>회원 가입</button>
				<button>전체 삭제</button>
			</div>
		</section>
		<footer>
			Footer
		</footer>
	</div>
</body>
</html>