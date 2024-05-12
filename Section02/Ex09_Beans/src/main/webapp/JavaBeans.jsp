<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		* 자바 빈즈(Java Beans) 기술은 무엇인가?
		- 프로그램 개발 시 어떤 기능을 하나의 모듈로 만들거나 재사용, 유지보수 편리성을 위해 자바 언어로 만드는 클래스
		- 이러한 기술을 자바 빈(Bean) 또는 비즈(Beans) 기술이라고 부른다.
		- 빈(Bean) 또는 빈즈(Beans)라는 표현이나 용어가 생경하다면 과거에 많이 들어봤던 컴포넌트(Component)를 떠올리면 된다.
		- JBE (Enterprise Java Beans) -> 예전에 기업 환경에서 주로 사용, 서버측 컴포넌트 모델
		- JSP Beans -> JSP 에서 사용하는 자바 빈 클래스
		
		* 컴포넌트(Component)란?
		- 어떤 비즈니스 로직을 수행하는데 필요한 구성 요소를 독립적 단위로 개발해놓은 것
		- 보통 규격화된 인터페이스를 가지도록 만들기 때문에, 하나의 부품 단위로 여기저기에 조립식으로 붙여서 사용
		- 즉, JSP Beans 기술은 JSP 웹 개발 시 많이 사용되며, 자바 언어로 만들어진 컴포넌트 클래스
	
		* 자바 빈(빈즈) 예를 든다면?
		- 폼(Form) 페이지를 통해서 사용자가 입력한 값들이 전달되고 처리 페이지에서 빈즈를 사용하여 전송된 값을 체크
		- 물론 이러한 것을 빈즈를 사용하지 않고 JSP 페이지에서 스크립트릿에 자바 문법으로 구현도 가능
		- 빈즈를 사용하는 이유는 JSP 페이지에서 자바 문법으로 작성한 로직 부분을 별도의 빈즈 클래스로 떼어내서 만들 수 있다.
		- 비즈니스 로직을 자바 클래스로 만들어 뷰페이지와 분리할 수 있다는 점이 큰 장점!
		
		* 자바 빈은 어떻게 만드나?
		- 자바 언어로 개발
		- 자바 문법을 사용해서 어떤 기능을 수행하는 자바 클래스를 만들어 놓으면 된다.
		- 과거에 ASP 웹 개발시 VisualBasic, Visual C++ 등으로 업로드 컴포넌트를 개발하여 사용하는 것과 거의 동일
	 	
	 	* 만든 자바 빈은 JSP 페이지에서 어떻게 사용하나?
	 	- 자바 빈(빈즈) 컴포넌트를 JSP 페이지로 불러와서 사용하는 방법은 여러 가지 방법이 존재
	 	- 스크립트릿 기반으로 사용도 가능하나 보통은 빈즈를 만들어 사용하는 것을 권장
	 	- 자바 스타일로 객체를 생성하고 메서드를 점(.) 찍어서 호출하여 사용해도 되고 손쉽게 액션태그를 사용해도 가능
	 	- <jsp:useBean... />
	 	- <jsp:useBean... /> 이런 형식의 액션태그를 사용하면 초보자도 손쉽게 사용 (다른 방법도 존재)
	 
	 	* 빈즈를 사용하는 이유는?
	 	- 빈즈를 사용하여 개발하게 되면 "비즈니스 로직(DB 연동)"과 "뷰 페이지(HTML/CSS)" 코드를 분리할 수 있으므로 좋음
	 	- JSP 페이지에서는 최소한의 자바 코드로만 작성할 수 있어서 좋음
	 	- JSP 페이지가 스파게티식으로 코드가 뒤엉켜 있는 것이 싫은 경우 빈즈를 사용하여 비즈니스 로직을 분리하면 좋음
	 	- 데이터베이스 연동을 포함하여 특정 비즈니스 로직을 모듈로 만들어서 사용하고자 할 때 좋음
	 	- 요청과 응답에서 다양한 값을 하나의 단위로 전송하고 주고 받을 때 좋음
	 	- 공통된 기능을 제공하고자 할 때 좋음
	 	- 프로그램 코드의 중복을 줄이고 재사용, 유지보수 편리성을 높이고자 할 때 사용하면 좋음
	 	
	 	* 자바 빈(빈즈) 사용의 가장 좋은 장점은?
	 	- 자바 클래스로 비즈니스 로직을 JSP 뷰 페이지와 분리할 수 있는 점
	 	- 개발자는 클래스의 유지보수를 주로 담당하고, 웹디자이너는 JSP 뷰페이지 및 템플릿 디자인을 담당하도록 분리
	 -->
	 
</body>
</html>