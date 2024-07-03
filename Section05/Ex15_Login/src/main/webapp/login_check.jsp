<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    

<%
	String sid = session.getId();
	out.println(sid);
	
	// 데이터베이스 회원 정보
	String db_id = "wonderwomen";
	String db_pw = "12345";
	String db_name = "원더우먼";
	
	// 넘어온 값 받기
	String m_id = request.getParameter("id");
	String m_pw = request.getParameter("pw");
	
	// 아이디 및 비밀번호
	if(m_id.isEmpty() || m_pw.isEmpty()){
		out.println(
			"<script>" +
			"alert('아이디와 비밀번호를 입력해주세요!');" +
			"history.back();" +
			"</script>"
		);
	}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Check</title>
</head>
<body>
	<%
		// 로그인 인증 및 세션 값 설정
		if((m_id.equals(db_id)) && (m_pw.equals(db_pw))){
			
			// id, pw 맞으면 세션 객체 속성(세션 변수) 셋팅
			session.setAttribute("m_id", m_id);
			session.setAttribute("m_pw", m_pw);
			
			// 출력
			out.println(session.getAttribute("m_id") + "(" + session.getAttribute("m_pw") + ") 회원님 방문을 환영합니다.");
			
		}else{
			out.println("먼저 ID/PW 정보를 확인하고 로그인을 해주세요!");
		}
	%>
	<hr/>
	<ul>
		<li>현재 설정된 세션 아이디 : <%=session.getAttribute("m_id") %></li>
		<li>현재 설정된 세션 비밀번호 : <%=session.getAttribute("m_pw") %></li>
	</ul>
	<hr>
	<button onclick="location.href='./login_form.jsp';">로그인 페이지</button>
</body>
</html>