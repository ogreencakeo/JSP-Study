<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="member.site.com.MemberVO" />
<jsp:setProperty name="member" property="*" />
<%
	// 테스트 출력
	// out.println(member.getId() + "<br>");
	// out.println(member.getPw() + "<br>");
	// out.println(member.getName() + "<br>");
	// out.println(member.getEmail() + "<br>");
	// out.println(member.getPhone() + "<br>");
	
	// toString() 메서드 만들어 놓고 출력
	out.println(member + "<br>");
%>
<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	// 수정
	// out.println("수정한 회원의 수는 ?" + db.update(member));
	int result = db.update(member);
	out.println("수정한 회원의 수는 ?" + result);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function(){
		setTimeout(() => {
			location.href = "/Ex12_CRUD2/member_control.jsp?action=list";
		}, 3000);
	}
</script>
</head>
<body>
	
</body>
</html>