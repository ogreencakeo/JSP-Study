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
	int limitValue = 4; // 한 페이지당 보여지는 레코드의 갯수
	
	// 레코드 시작 위치 계산
	cPosition = (cPage - 1) * limitValue;
	// cPosition = (cPage * limitValue) - limitValue;
	
	out.println("limit : " + cPosition + ", " + limitValue) ;
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
		<%
			// 이전 페이지 vs 다음 페이지 처리
			// 버튼 안내문 처리는 가급적 "다음 페이지"부터 처리하는 걸 추천 (크게 상관 X)
			
			// ★ 기본적으로 이전 페이지 vs 다음 페이지 처리를 위해서 몇 가지 필요한 변수들
			// - 총 레코드 수 : totalRecord
			// - 총 페이지 수 : totalPage
			// - 이전 페이지 값 : prev(Cpage - 1 이렇게 안하기 위해서)
			// - 다음 페이지 값 : next(Cpage + 1)
			// - 한 페이지에 보여지는 글 갯수 : limitValue()
			
			// ★ 총 페이지 수 = 총 레코드 수 / 한 페이지에 보여지는 레코드 수 (소수점 주의)
			// totalPage = totalRecord / limitValue
			// 15 / 4 하면 소수점이 나오므로 올림 처리 필요 -> 소수점이 나온다. -> 즉, 페이지가 있다.
			// 이때 함수 사용 -> 소수점 처리 -> 15 / 4 = 3.75 --> 4로 만들어주는게 필요
			// Math 클래스내 적절한 함수 사용
			
			// ★ 테스트
			// 소수점 제거 함수 -> Math.ceil() 올림 함수, floor() 버림 함수, round() 반올림 함수
			// ceil() 	: 소수점 아래의 숫자를 모두 버리고, 정수부에 플러스 1
			// floor() 	: 소수점 아래의 숫자를 모두 버림
			// round() 	: 소수점 아래의 숫자를 모두 버리고, 대신에 0.5 이상은 1로 올리고 0.5미만은 그냥 버림
			
			/* 
			out.println(3.75 + "<br />");
			out.println("Math.ceil() => " + Math.ceil(3.75) + "<br />"); // 4.0 -> 반환값은 double type
			out.println("String.format() => " + String.format("%.0f", Math.ceil(3.75)) + "<br />");
			out.println("(int) => " + (int) Math.ceil(3.75) + "<br />");
			
			out.println("ceil() => " + (int) Math.ceil(3.45) + "<br />"); // 4
			out.println("floor() => " + (int) Math.floor(3.45) + "<br />"); // 3
			out.println("round() => " + (int) Math.round(3.45) + "<br />"); // 3 
			*/
		
			// out.println(15 / 4.0 + "<br />"); // 3.75
			
			// ● 총 페이지 구하기
			int totalRecord = 15;
			int totalPage = (int) Math.ceil(totalRecord / Math.floor(limitValue));
			int prev = cPage - 1;
			int next = cPage + 1;
			
			out.println("총 페이지 수 : " + totalPage + "Pages <br />");
			out.println("이전 페이지 : " + prev);
			out.println(", 현재 페이지 : <b style='color : red'>" + cPage + "</b>");
			out.println(", 다음 페이지 : " + next + "<br />");
		%>
		<div class="link-div" style="float:right">
			<a href="<%= application.getAttribute("ROOTPATH")%>/member_control.jsp?action=list&page=<%=cPage - 1 %>">◀ 이전 페이지</a>
			&nbsp;&nbsp;&nbsp;
			<a href="<%= application.getAttribute("ROOTPATH")%>/member_control.jsp?action=list&page=<%=cPage + 1 %>">
			 다음 페이지 ▶
			 </a>
		</div>
	</main>
</body>
</html>