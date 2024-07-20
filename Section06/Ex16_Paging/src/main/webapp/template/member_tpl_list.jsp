<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 넘어온 페이지 값이 없으면 => 1
	String _page = request.getParameter("page");
	
	// 일단 처음에 접속하면 1페이지로 셋팅
	int cPage = 1;
	
	// 페이지 값이 널이 아니면 해당 페이지 값을 셋팅
	if(_page != null){
		cPage = Integer.parseInt (_page);
	}
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List page</title>
<style>
	main{
		border : 0px solid red;
		margin : 0 auto;
		width : 80%;
	}
	table{
		width : 100%;
		border : 3px solid #444;
		border-collapse: collapse; /* 셀 사이 여백을 없애줌 */
	}
	th, td{
		border-style : dashed;
		border-color : #585c6b;
		padding: 10px;
		text-align: center;
	}
	caption{
		padding: 15px;
		font-size: 1rem;
		font-weight: bold;
		text-transform: uppercase;
	}
	main>h2{
		letter-spacing: -0.04rem;
	}
</style>
</head>
<body>
	<main>
		<h2>Member List with Paging</h2>
		<hr />
		<table border=1>
			<caption>Current Page : <%= cPage %></caption>
			<tr>
				<th>#</th>
				<th>id</th>
				<th>password</th>
				<th>name</th>
				<th>email</th>
				<th>phone</th>
				<th>level</th>
			</tr>
			<!-- 반복문을 사용하여 dataList 출력하기 -->
			<tr>
				<td>1</td>
				<td>superman</td>
				<td>1234</td>
				<td>슈퍼맨</td>
				<td>superman@gmail.com</td>
				<td>010-1111-1111</td>
				<td>0</td>
			</tr>
		</table>
		<hr />
	</main>
</body>
</html>