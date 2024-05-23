<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 삭제 페이지</h1>
	<%
		// 쿠키는 삭제에 대한 메소드가 존재하지 않는다 -> 유효기간은 짧게 수정하여
		// 기간만료로 삭제를 진행한다!
		
		// 쿠키 삭제의 조건
		// 1. 생성되어 있는 쿠키와 동일한 이름으로 새로운 쿠키를 생성한다
		Cookie jabachip = new Cookie("first","");
		
		jabachip.setMaxAge(0);
		
		response.addCookie(jabachip);
		
	%>
	<a href="ex01_GetCookie.jsp">쿠키 확인</a>
	<a href="ex01_CreateCookie.jsp">쿠키 확인</a>
</body>
</html>