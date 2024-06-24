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
		<%@ include file="include/inc_header.jsp" %>
		<nav>
			<%@ include file="include/inc_topmenu.jsp" %>
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
			<div style="padding-top: 26px"></div>
			<button>회원 가입</button>
			<button>전체 삭제</button>
		</section>
		<footer>
			<%@ include file="include/inc_footer.jsp" %>
		</footer>
	</div>
</body>
</html>