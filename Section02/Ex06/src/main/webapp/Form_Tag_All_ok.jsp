<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 전송된 값 변수에 저장
		String id = request.getParameter("id");
		String aniaml = request.getParameter("animal");
		String fruits[] = request.getParameterValues("fruit");
		String pet = request.getParameter("pet");
		String content = request.getParameter("content");
		
		// 출력
		out.println(id + "<br>");
		out.println(aniaml + "<br>");
		
		// fruits 필드는 향상된 for반복문으로 출력
		for(String s : fruits){
			out.println(s + "<br>");
		}
		out.println("<br>");
		out.println(pet + "<br>");
		
		// content 필드는 개행처리 필요
		// 1. java. jstl, javascript 등을 이용 -> \n 개행문자를 <br> 태그로 변환
		// 2. <pre> 태그나 CSS 속성인 white-space 등을 이용 -> html 페이지에서 출력된 개행문
		out.println("<p style='white-space:pre-line'>" + content + "</p>");
	%>
</body>
</html>