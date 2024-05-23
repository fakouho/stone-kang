<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  오류가 발생할 경우 띄어줄 수 있는 error용 페이지 지정! -->
<%@page errorPage="Ex06_ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	2를 0으로 나누어볼까요?
	<%=2/0 %>

</body>
</html>