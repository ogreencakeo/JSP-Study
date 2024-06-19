<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />
<%
	// db.deleteDB() 메서드 호출
	if(db.deleteDB("deleteAll")){
		out.println("<script>");
		out.println("alert('전체 삭제가 성공적으로 완료되었습니다.');");
		out.println("location.href='" + application.getAttribute("ROOTPATH") + "/member_control.jsp?action=list';");
		out.println("</script>");
	}else{
		out.println("전체삭제 실패");
	}
%>