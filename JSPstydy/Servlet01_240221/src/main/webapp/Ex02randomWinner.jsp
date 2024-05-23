<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body aling="center">
	<fieldset>
		<legend> 랜덤당첨결과</legend>
		
		<%
		String[] num=request.getParameterValues("food");
		response.setContentType("text/html; charset=utf-8");
		Random ran=new Random();
		int num1 = ran.nextInt(num.length);
		%>
		<form action="">
			<input type="text" value="오늘 점심 메뉴는?">
			<%out.print(num[num1]); %>
		</form>
	</fieldset>

</body>
</html>