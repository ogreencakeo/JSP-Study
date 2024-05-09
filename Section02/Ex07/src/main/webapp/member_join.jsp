<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex07</title>
</head>
<body>
	<!-- 
		JSP DB 연동 기본 개념
		- 지금까지 공부한 것은 -> DB연동을 위해서 공부
		- 한 번에 모든 것을 이해하려고 하지말고, DB 연동을 그대로 따라가면서 입력, 출력 성공하는 것을 여러번 반복한다.
		- 기본적으로 DB 연동 방식은 여러가지 형태로 할 수 있다.
		- 여기서 배우는 연동 방식이 베이스가 되어서 이후 공부하게 되는 다른 방식에 대한 초석이 된다.
		
		1. 필요한 것들 -> MySQL, Driver File
			- 계정 생성 필요 -> root, 1234 (보통 DB 설치할 때 계정)
			- 드라이버 위치 -> ROOT > WEB-INF > lin 폴더에 위치
			- 설치 확인 -> Build Path > Libraries > Classpath > Web App Libraries
		
		2. MySQL Server -> Start 구문 (원래 기본값이 서버 자동 실행인데 공부할 때는 보통 수동으로 변경)
			- 윈도우 검색 > 서비스 > mysql80 서비스 상태를 실행 중... 으로..
		
		3. Driver Download
			- mysql-connector-j-8.2.0.jar
			- https://dev.mysql.com/downloads/connector/j/?os=26 -> zip 파일로 다운
			- 압축 풀면 jar 파일만 복사해서 lib 폴더에 위치 (새로고침 클릭)
	-->
	 
</body>
</html>