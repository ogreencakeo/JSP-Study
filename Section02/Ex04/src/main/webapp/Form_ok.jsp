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
		// 전송된 폼 값들 받기
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		
		// 출력
		out.println(animal);
		out.println(fruit);
	%>
	
</body>
</html>