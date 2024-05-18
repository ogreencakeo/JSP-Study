package member.site.com;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	// ArrayList (데이터베이스 이용)
	
	List<MemberVO> memberList = new ArrayList<>();
	
	// 추가 : add
	public void add(MemberVO m) {
		memberList.add(m);
	}
	
	// 출력 : getList()
	public List<MemberVO> getList(){
		return memberList;
	}
	
	// 사이즈 : getSize()
	public int getSize() {
		return memberList.size();
	}
	
	// 수정 : update() -> set() 메서드 사용
	public int update(MemberVO m) {
		int idx = memberList.indexOf(m);
		return idx;
	}
}
