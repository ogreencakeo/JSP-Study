<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="member.project.com.MemberBean" />
<jsp:setProperty name="member" property="*" />
	<!-- 
		[ name ]
		속성을 설정할 JavaBean 인스턴스의 이름을 지정합니다. 
		여기서는 member라는 이름을 사용하여 <jsp:useBean> 태그에서 생성한 JavaBean 인스턴스를 참조합니다.
	
		[ property ]
		JavaBean의 속성을 지정합니다. 
		"*"를 사용하면 요청 매개변수의 이름과 일치하는 모든 속성을 자동으로 설정합니다.
		
		[ value ] 
		속성에 설정할 값을 지정합니다. 
		property="*"를 사용할 경우, 이 속성은 요청 매개변수에서 값을 가져오기 때문에 생략할 수 있습니다. 
	-->

<%
	out.println("아이디 : " + member.getMemberID() + "<br/>");
	out.println("비밀번호 : " + member.getMemberPW() + "<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Form OK2</title>
</head>
<body>
	<%
		if(!member.checkMember()){
			out.println("관리자 아이디가 아닙니다.");
		}else{
			out.println("관리자 아이디가 맞습니다.");
		}
	%>
</body>
</html>