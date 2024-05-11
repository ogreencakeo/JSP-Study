<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex07</title>
</head>
<body>
	<%
		// 한글 깨짐 방지 인코딩 지정
		request.setCharacterEncoding("UTF-8");
	
		// 데이터 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		// 출력
		out.println(id + "<br>");
		out.println(pw + "<br>");
		out.println(name + "<br>");
		out.println(email + "<br>");
		out.println(phone + "<br>");
		
		// DB 정보
		String dbDriver = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/mydb2";
		String dbID ="root";
		String dbPw = "1234";
		
		// DB 연동을 위한 객체 변수 생성
		Connection DbConn = null;
		PreparedStatement pstmt = null;
		
		// DB 연동 4단계
		try{
			// DB연동 1단계
			Class.forName(dbDriver); // JDBC 드라이버를 로드합니다.
			// MySQL 데이터베이스에 연결합니다.
			DbConn = DriverManager.getConnection(dbUrl, dbID, dbPw);
		
			// 데이터베이스 접속 성공
			out.println("DB접속이 성공되었습니다.");
			
			// DB 연동 2단계
			// DB 입력 준비 단계 -> prepare
			// SQL 쿼리를 작성하고 해당 쿼리를 실행하기 위한 그 전 단계로 DB에 입력을 준비하는 단계
			// SQL 쿼리문을 준비 및 실행을 위한 statement 또는 preparedStatement 객체 생성이 필요 -> DbConn
			pstmt = DbConn.prepareStatement("INSERT INTO tbl_member VALUES (?, ?, ?, ?, ?)");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, phone);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			// DB 연동 4단계
			if(DbConn != null){
				try{ DbConn.close(); }
				catch(SQLException ex){}
			}
		}
		
	%>
</body>
</html>