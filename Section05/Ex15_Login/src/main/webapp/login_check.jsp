<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    

<%
	// 일단 DB에 입력된 암호화된 문자열 값과 똑같은 값을 만들어보자
	/* String strPw = "1234";
	MessageDigest md = MessageDigest.getInstance("SHA-256");
	md.update(strPw.getBytes()); // 암호화 처리 */
	
	// 암호화된 문자열 값을 가져오기 -> md.digest() 사용
	// BitInteger 클래스 사용
	// - 일반적으로 어마어마하게 큰 수라 하더라도 long 타입 정도면 충분(사실 실생활에서는 이것도 거의 사용 X)
	// - 그러나 패턴 분석이나 암호화 시 키가 256비트 이상이면 수가 굉장히 커지기 때문에 사용하기도 한다.
	// - 기본적으로 빅인티저는 오버로드 된 생성자가 많다.
	// - new BitInteger(int signum(부호), byte[] 배열)
	// String.format()
	// 첫 번째 인자 : 문자열 형식 지정, 문자열 내에 %x 형태로 포멧 지정자를 사용 (타입 : String) -> "%64x"
	// 두 번째 인자 : 포맷 지정자에 대응시킬 값들 (타입 : Object)
	
	//String hexPw = String.format("%064x", new BigInteger(md.digest()));
	// out.println("hexPw : " + hexPw + "<br / >"); 
%>

<%
	String sid = session.getId();
	out.println(sid);
	
	// 데이터베이스 회원 정보
	String db_id = null;
	String db_pw = null;
	String db_name = null;
	
	// 넘어온 값 받기
	String m_id = request.getParameter("id");
	String m_pw = request.getParameter("pw");
	out.println("암호화 처리 전 : " + m_pw + "<br />");
	
	// 암호화
	String strPw = m_pw;
	MessageDigest md = MessageDigest.getInstance( "SHA-256" );
	md.update(strPw.getBytes()); // 암호화 처리
	String hexPw = String.format("%064x", new BigInteger(1, md.digest()));
	
	m_pw = hexPw;
	out.println("암호화 처리 후 : " + m_pw + "<br />");
	
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	// DB 정보
	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/mydb2";
	String dbID = "root";
	String dbPW = "1234";
	
	// DB 연동에 필요한 변수들 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		// DB 연동 1단계 (Connection)
		Class.forName(dbDriver);
		conn = DriverManager.getConnection(dbUrl, dbID, dbPW);
		
		// DB 연동 2단계 (Prepare)
		String strSQL = "select * from tbl_member where id=? and pw=?";
		
		pstmt = conn.prepareStatement(strSQL);
		pstmt.setString(1, m_id);
		pstmt.setString(2, m_pw);
		
		// DB 연동 3단계 (Execute)
		rs = pstmt.executeQuery();
		// rs.next();
	
		// 반환된 아이디 값 여부에 따라 조건 비교
		if(rs.next()){			
			out.println(rs.getString("id") + "<br />");
			out.println(rs.getString("pw") + "<br />");
			out.println(rs.getString("name") + "<br />");
		}else{
			out.println(
					"<script>" + 
					"alert('입력하신 정보가 없습니다.');" +
					"history.back();" +
					"</script>"
			);
		}
		
		// DB 에서 가져온 회원 정보 변수에 저장
		db_id = rs.getString("id");
		db_pw = rs.getString("pw");
		db_name = rs.getString("name");
	}
	catch(SQLException ex){ ex.printStackTrace(); }
	catch(Exception e){ e.printStackTrace(); }
	finally{
		// DB 연동 4단계 (close)
		if( rs != null )try{ rs.close(); }catch(SQLException ex){}
		if( pstmt != null )try{ pstmt.close(); }catch(SQLException ex){}
		if( conn != null )try{ conn.close(); }catch(SQLException ex){}
	}
	
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	// 아이디 및 비밀번호
	if(m_id.isEmpty() || m_pw.isEmpty()){
		out.println(
			"<script>" +
			"alert('아이디와 비밀번호를 입력해주세요!');" +
			"history.back();" +
			"</script>"
		);
	}
%>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Login Check</title>
</head>
<body>
	<%
		// 로그인 인증 및 세션 값 설정
		if((m_id.equals(db_id)) && (m_pw.equals(db_pw))){
			
			// id, pw 맞으면 세션 객체 속성(세션 변수) 셋팅
			session.setAttribute("m_id", db_id);
			session.setAttribute("m_pw", db_pw);
			session.setAttribute("m_name", db_name);
			
			// 출력
			out.println(session.getAttribute("m_id") + "(" + session.getAttribute("m_name") + ") 회원님 방문을 환영합니다.");
			
		}else{
			out.println("먼저 ID/PW 정보를 확인하고 로그인을 해주세요!");
		}
	%>
	<hr/>
	<ul>
		<li>현재 설정된 세션 아이디 : <%=session.getAttribute("m_id") %></li>
		<li>현재 설정된 세션 비밀번호 : <%=session.getAttribute("m_pw") %></li>
	</ul>
	<hr>
	<button onclick="location.href='./login_form.jsp';">로그인 페이지</button>
</body>
</html>