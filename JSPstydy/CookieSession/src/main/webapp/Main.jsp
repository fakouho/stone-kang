<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  uri >>  라이브러리 안에 잇는 수많은 도구들 중에 내가 사용할 도구를 작성
	  prefix >> 이제부터 가져온 도구의 이름을 정해주는 구간(접두사)
 	  *core도구 - 변수선언 / 조건문 / 반복문 / 화면 출력
 -->
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
		JSTL/EL
		: Java Standard Tag Library
		: Expression Language
	 -->
	 
	<%
		// 1. 세션안에 있는 데이터 꺼내오기
		//String nn = (String)session.getAttribute("nickname");
	%>
	
		<h3>메인 페이지</h3>
		
		<c:forEach begin="1" end="5" step="1">
		
			<%--<%=nn --%>
			${nn}님 환영합니다.
		
		</c:forEach>
		<a href="logout">로그아웃</a>
		<!--  
			EL의 장
			>> request,session(Scope / 저장공간 범위)등등
			   알아서 데이터를 찾아서 다운캐시틍까지 진행
			   화면에 출력
			 -->

</body>
</html>