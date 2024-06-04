package member.site.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	// Connection 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// MySQL 데이터베이스 연결 정보
	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/mydb2";
	String dbID ="root";
	String dbPW = "1234";
	
	// 연결 : connect()
	public void connect() {
		try {
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(dbUrl, dbID, dbPW);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 연결 해제 : disconnect()
	public void disconnect() {
		if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if(conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
	
	// 입력 : insertDB()
	public boolean insertDB(MemberVO m) {
		try {
			// DB 연동 1단계 (키워드 -> Connection) : DB 연결
			connect();
			
			// DB 연동 2단계 (키워드 -> Prepare) : SQL 쿼리 준비
			
			// DB 연동 3단계 (키워드 -> Execute) : SQL 쿼리 실행
		}catch(SQLException ex) {
			ex.printStackTrace();
		}finally {
			// DB 연동 4단계 (키워드 -> close) : 자원 반납
		}
		return true;
	}
	
	// 출력 : listDB()
	
	// 수정 : updateDB()
	
	// 삭제 : deleteDB()
	
}
