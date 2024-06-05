package member.site.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
		// int res = -1;
		try {
			// DB 연동 1단계 (키워드 -> Connection) : DB 연결
			connect();
			
			// DB 연동 2단계 (키워드 -> Prepare) : SQL 쿼리 준비
			// SQL 쿼리를 작성하고 해당 쿼리를 실행하기 위한 그 전 단계로 DB에 입력을 준비하는 단계
			// SQL 쿼리문 준비 및 실행을 위한 statement 또는 preparedSatement 객체 생성이 필요 -> pstmt = conn.pre..(SQL)
			String strSQL = "insert into tbl_member(id, pw, name, email, phone) values(?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(strSQL);
			
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPw());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());	  
			 
			// 최종 완성된 쿼리문 출력 (실행 전 준비한 쿼리문 콘솔에 출력)
			
			// DB 연동 3단계 (키워드 -> Execute) : SQL 쿼리 실행
			// System.out.println(pstmt);
			
			// DB 연동 3단계 (키워드 -> Execute) : SQL 쿼리 실행
			// res = pstmt.executeUpdate();
			pstmt.executeUpdate();
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			// return false;
		}finally {
			// DB 연동 4단계 (키워드 -> close) : 자원 반납
			disconnect();
		}
		return true;
		// return res;
	}
	
	// 출력 : listDB()
	public ArrayList<MemberVO> listDB(){
		try {
			// DB 연동 1단계 (키워드 -> Connection) : DB 연결
			connect();
			
			// DB 연동 2단계 (키워드 -> Prepare) : SQL 쿼리 준비
			String strSQL = "select * from tbl_member order by id desc";
			pstmt = conn.prepareStatement(strSQL);
			
			// DB 연동 3단계 (키워드 -> Execute) : SQL 쿼리 실행
			rs = pstmt.executeQuery(); // 쿼리문 실행 시 ResultSet 값을 반환
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
	}
	
	// 수정 : updateDB()
	
	// 삭제 : deleteDB()
	
}
