package member.test.com;

import java.util.ArrayList;
import java.util.List;

public class MemberDB {
	// ArrayList (데이터베이스 이용)
	
	List<Member> memberList = new ArrayList<>();
	
	// 추가 : add
	public void add(Member m) {
		memberList.add(m);
	}
	
	// 출력 : getList()
	public List<Member> getList(){
		return memberList;
	}
	
	// 사이즈 : getSize()
	public int getSize() {
		return memberList.size();
	}
}
