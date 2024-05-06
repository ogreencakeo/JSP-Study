<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// ★ JSP 태그 종류
		// - 스크립트 태그(script tag) vs 액션 태그(action tag)
		// - <% 뒤에 어떤 특수문자(기호)가 오느냐에 따라 기능이 달라진다.
		// - <% 뒤에 오는 기호는 공백없이 작성 (띄어쓰기 X)
		
		// ★ 스크립트 태그 : 
		// 1. @ : 지시문 (directive) -> JSP 페이지를 처리하기 위한 정보나 기능을 지시 (지정)
		// 2. ! : 선언문 (declaration) -> JSP 페이지에서 사용할 변수나 메서드 선언
		// 3.   : 스크립트릿 (scriptlet) -> 자바 코드로 구성된 JSP 스크립트 작성
		// 4. = : 표현식 (expression) -> print() 대신에 사용하는 데이터 출력용 표현식
		// 5. -- : 주석 (comment)
		
		// ★ 스크립트 태그 형태
		// 1. <%@ ...
		// 2. <%! ...
		// 3. <% ...
		// 4. <%= ...
		// 5. <%-- ...
		
		// ★ 액션 태그
		// 액션 태그도 스크립트 태그 만큼 다양하지만, 일단 포워딩과 인클루딩을 수행하는 액션 태그는 필수적으로 이해하자
		// 형식 : <프리픽스 : 지시자 속성 = "값" />
		// 예제 : <jsp:forward page="test.jsp" />
		
	%>
	
</body>
</html>