<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05</title>
</head>
<body>
	<%
		// 여러 개 값을 선택할 수 있는 체크박스로 전송한 값 받기(name이 다른 경우) -> Enumeration 사용
		Enumeration<String> enums = request.getParameterNames();
		// <String> 안써주면 노랑 밑줄 출력 (경고)
		// request.getParameterValues(String name); -> 매갯값이 필요
		out.println(enums);
	%>
</body>
</html>