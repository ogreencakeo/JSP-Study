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
		// ArrayList 선언
		// DB에서 한 명씩 가져온 멤버 데이터를 담는 용도로 사용
		ArrayList<MemberVO> dataList = new ArrayList<>();
		
		try {
			// DB 연동 1단계 (키워드 -> Connection) : DB 연결
			connect();
			
			// DB 연동 2단계 (키워드 -> Prepare) : SQL 쿼리 준비
			String strSQL = "select * from tbl_member order by id desc";
			pstmt = conn.prepareStatement(strSQL);
			
			// DB 연동 3단계 (키워드 -> Execute) : SQL 쿼리 실행
			rs = pstmt.executeQuery(); // 쿼리문 실행 시 ResultSet 값을 반환
			
			// rs.next() 반복 : 한 명의 멤버 객체 셋팅 -> 다음 레코드가 있으면 true, 없으면 false
			// rs.close() 자원 반납하는거 꼭 기억!
			while(rs.next()) {
				// 하나의 레코드에 들어있는 필드 값들을 저장하는 객체 생성
				MemberVO member = new MemberVO();
				
				member.setId(rs.getString(1));
				member.setPw(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setPhone(rs.getString(5));
				
				// 하나의 멤버 정보가 모두 셋팅되었으면 ArrayList에 추가
				dataList.add(member);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return dataList;
	}
	
	// 수정 : updateDB()
	public boolean updateDB(MemberVO m) {
		
		return true;
	
	}
	
	// 한 명의 회원 정보 반환 : getMember()
	public MemberVO getMember(String id) {
		MemberVO member = new MemberVO();
		
		// DB에서 전달된 ID에 해당하는 회원 정보를 추출
		
		return member;
	}
	
	// 삭제 : deleteDB()
	
}
