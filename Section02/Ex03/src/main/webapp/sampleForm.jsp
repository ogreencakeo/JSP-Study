<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sampleForm</title>
</head>
<body>
	<h1>Sample Form</h1>
	<hr>
	<%-- 폼 데이터가 제출될 때 처리할 JSP 파일의 경로를 지정합니다. --%>
	<form name="myForm" action="./sampleForm_ok.jsp" method ="POST">
		<ul>
			<li>번호(정수) : <input type="text" name="num"></li>
			<li>이름(문자) : <input type="text" name="name"></li>
			<li>점수(실수) : <input type="text" name="score"></li>
		</ul>
		<input type="submit" value="전송">
	</form>
</body>
</html>