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
			1. HTML에서 보내주는 데이터 꺼내오기
			2. 꺼내진 데이터 화면에 보이도록 출력
		 -->
		<%  
			//0. 요청값을 인코딩하는 작업!
			request.setCharacterEncoding("UTF-8");
			//1.
			String name = request.getParameter("name");
		%>
		
		입력된 이름은 :<%= name %>
</body>
</html>