package member.site.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	
	// 연결 해제 : disconnect()
	
	// 입력 : insertDB()
	
	// 출력 : listDB()
	
	// 수정 : updateDB()
	
	// 삭제 : deleteDB()
	
}
