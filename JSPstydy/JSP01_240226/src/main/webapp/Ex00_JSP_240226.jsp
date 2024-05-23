<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
    <!-- 4. 지시자 : 페이지에 필요한 설정을 지정할 수 있는 영역!-> improt 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. 스크립트릿 : JSP 내부에서 java언어를 로직으로 사용하기 위한 영역! -->
	<%
		int num1 = 10;
		int num2 = 10;
		int sum =num1+num2;
		
		ArrayList<String> arry = new ArrayList();
	%>
	<!-- 2. 표현식 : java 변수를 화면에 출력하기 위하여 사용되는 영역 -->
	<%=sum%>
	<!-- 3. 선언문 : 메소드를 선언하기 위해서 사용하는 영역 전역 메소드로 만들어 진다 -->
	<!-- 선언문은 .java로 변환시 해당 내용들을 전역으로 쓸수있도록 가장 맨위에 배치한다! -->
	
</body>
</html>