<%@page import="member.site.com.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />

<%
	// 넘어온 페이지 값이 없으면 => 1
	String _page = request.getParameter("page");
	
	// 일단 처음에 접속하면 1페이지로 셋팅
	int cPage = 1;
	
	// 페이지 값이 널이 아니면 해당 페이지 값을 셋팅
	if(_page != null){
		cPage = Integer.parseInt (_page);
	}
	
	// LIMIT ?, ? => 이 값을 여기서 계산하여 전달
	int cPosition = 0;	// 해당 페이지에서 보여져야 하는 레코드의 시작 위치
	int limitValue = 5; // 한 페이지당 보여지는 레코드의 갯수
	
	// 레코드 시작 위치 계산
	cPosition = (cPage - 1) * limitValue;
	// cPosition = (cPage * limitValue) - limitValue;
	
	/* 
		현재 페이지 					1p  2p  3p  4p  5p
		
		레코드 시작위치	(cPosition)		0	5	10	15	20	
		
		보여지는 글 갯수 (limitValue)	5	5	5	5	5
	*/
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
	.link-div{
		text-align: center;
		padding: 20px 0;
	}
	a{
		text-decoration-line : none;
		color : black;
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
			<%
				for(MemberVO m : db.listDB(cPosition, limitValue)){
					%>
						<tr>
							<td><%=m.getIdx() %></td>
							<td><%=m.getM_id() %></td>
							<td><%=m.getM_pw() %></td>
							<td><%=m.getM_name() %></td>
							<td><%=m.getM_email() %></td>
							<td><%=m.getM_phone() %></td>
							<td><%=m.getM_level() %></td>
						</tr>
					<%
				}
			%>
		</table>
		<hr />
		<div class="link-div">
			<a href="<%= application.getAttribute("ROOTPATH")%>/member_control.jsp?action=list
			&page=<%=cPage - 1 %>">◀ 이전 페이지</a>
			
			&nbsp;&nbsp;&nbsp;
			
			<a href="<%= application.getAttribute("ROOTPATH")%>/member_control.jsp?action=list
			&page=<%=cPage + 1 %>">
			 다음 페이지 ▶
			 </a>
		</div>
	</main>
</body>
</html>