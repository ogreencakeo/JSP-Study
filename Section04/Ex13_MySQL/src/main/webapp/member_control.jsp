

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	★ DB 연동할 때 사전 체크사항 (초보자 기준)
	- 1. 서비스 목록 들어가서 데이터베이스 시작(Start) 되어있는지 체크
	- 2. DB 연결할 때 사용할 해당 데이터베이스 드라이버 다운로드 했는지 체크 -> /WEB_INF/lib 위치
	- 3. 데이터베이스 root 계정 아이디, 비밀번호 체크
	- 4. DB에 데이터 입력이 되어있는지 체크 -> 필요하면 몇 개 테스트로 입력하는 것도 가능
	- 5. 일단 입력/출력만 테스트
--%>
<%@ include file="./common.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	// 루트 패스 출력
	String ROOTPATH = (String) application.getAttribute("ROOTPATH");
	if(ROOTPATH != null){
		out.println("ROOTPATH => " + ROOTPATH);
	}
	
	// 넘어온 액션 값 받기
	String action = request.getParameter("action");
	if(action == null){
		out.println("action 값을 넣어주세요!");
		return;
	}
	
	// 분기 처리
	switch(action){
		case "insert":
			%><jsp:include page="./template/member_tpl_insert.jsp" /><%
			break;
			
		case "list" :
			%><jsp:include page="./template/member_tpl_list.jsp" /><%
			break;
		
		case "update":
			%><jsp:include page="./template/member_tpl_update.jsp" /><%
			break;

		case "delete":
		case "deleteAll" :
			%><jsp:include page="./template/member_tpl_delete.jsp" /><%
			break;
		
		default :
			out.println("요청 파라미터 값을 다시 확인해주세요!");
	}
%>