<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex07</title>
</head>
<body>
	<!--
		★ DB 연동 시 사용하는 Class.forName() 메서드 정리
			1. 해당 데이터베이스 관련한 드라이버 다운로드해서 등록
			2. 그럼 이 파일을 자바의 클래스 로더(Loader)가 JVM으로 로드하는 과정이 필요
			3. 즉, lib 폴더에 위치한 드라이버를 JVM으로 로드하기 위해서 사용하는 방식 -> Class.forName("로드할 클래스 이름");
			4. forName() 메서드는 DB 연결을 위해 클래스를 로드하는 데 사용
			5. 정리
				- jar 파일을 등록한 후 우리가 만드는 자바 애플리케이션에서 Driver 클래스를 로드하기 위해서,
				- forName() 메서드를 가지고 있는 Class 클래스를 사용하여 해당 데이터베이스에 맞는 드라이버 클래스를 로드한다.
	-->
</body>
</html>