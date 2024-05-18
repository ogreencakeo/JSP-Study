<%@page import="member.site.com.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	out.println((id != null) ? id : "null");
%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />

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

	<%
		if(id != null){
			String pw = null;
			String name = null;
			String email = null;
			String phone = null;
			
			// 수정할 회원정보를 검색 (서치)
			for(MemberVO m : db.getList()){
				if(m.getId().equals(id)){
					// 회원 정보를 셋팅
					pw = m.getPw();
					name = m.getName();
					email = m.getEmail();
					phone = m.getPhone();
					break;
				}
			}
			
			%>
			<h2>Member Join</h2>
			<form action="./member_update_ok.jsp" method="POST" autocomplete="off">
				<hr>
				<ul>
					<li><input class="input1" type="text" name="id" value=<%=id %> readonly></li>
					<li><input class="input2" type="password" name="pw" value=<%=pw %> ></li>
					<li><input class="input2" type="text" name="name" value=<%=name %> ></li>
					<li><input class="input2" type="text" name="email" value=<%=email %> ></li>
					<li><input class="input2" type="text" name="phone" value=<%=phone %> ></li>
				</ul>
				<hr>
				<!-- Submit -->
				<input type="submit" value="수정">
			</form>
			<%
		}else{
			%>
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
				<input type="submit" value="입력">
				<button onclick="location.href='member_list.jsp'">회원 리스트</button>
			</form>
			<%
		}
	%>
	
	
</body>
</html>