<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex07</title>
<style>
	ul>li{
		line-height: 1.5;
		list-style: none;
	}
	.input1{
		width : 300px;
		height: 40px;
		background-color: #f0f0f0;
		border : 1px solid #666;
		margin-bottom: 5px;
	}
</style>
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
		
		4. import가 필요한 것들
			- java.sql.Connection
			- java.sql.DriverManager
			- java.sql.PrepareStatement
			- java.sql.SQLException
			- 보통은 자동 임포트 되기 때문에 자동 완성 기능을 사용하면 된다. 그래도 이 정도는 기억하면 좋다.
			- 단축키 : Ctrl + Space
			- 최소한 이거하도 기억하자 : java.sql.*
			
		5. tbl_member 테이블 필드 정보
			- id, pw, name, email, phone
			- 처음에는 테스트를 위해서 간단하게 작성해서 입력, 출력
		
		6. DB 연동 4단계 (냉장고 사용 4단계)
			- 1단계 : 냉장고 문을 연다. (Open -> Connection)
			- 2단계 : 마트에서 사온 물건들을 넣기 위해서 준비한다. (Prepare)
			- 3단계 : 넣는다. (Execute)
			- 4단계 : 냉장고 문을 닫는다. (Close)
		
		7. 전체적으로 데이터베이스 연동 시 에러가 나는지 체크하면서 작업을 단계별로 수행 
			- 에러가 났으면 그 단계에서 무조건 체크
			- 무시하고 에러 단계를 넘어가면 뒤에서 더 난리날 수 있음
	-->
	 <h2>Member Join</h2>
	 <form action="./member_join_ok.jsp" method="POST">
	 	<hr>
	 	<ul>
	 		<li><input class="input1" type="text" name="id" placeholder="아이디 입력" required></li>
	 		<li><input class="input1" type="password" name="pw" placeholder="비밀번호 입력" required></li>
	 		<li><input class="input1" type="text" name="name" placeholder="이름 입력" required></li>
	 		<li><input class="input1" type="text" name="email" placeholder="이메일 입력" required></li>
	 		<li><input class="input1" type="text" name="phone" placeholder="전화번호 입력"></li>
	 	</ul>
	 	<hr>
	 	<input class="input2" type="submit" value="전송">
	 </form>
</body>
</html>