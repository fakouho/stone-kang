<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
		<legend> 랜덤당첨결과</legend>
		
		<%
		request.setCharacterEncoding("UTF-8");
		String title=request.getParameter("title");
		String[] foods = request.getParameterValues("food");
		Random ran = new Random();
		int frd = ran.nextInt(foods.length);
		%>
		<form action="">
			
			<br>
			드디어<%=title %>
			<br>
			<%out.print(foods[frd]);%>
			
		</form>
	</fieldset>

</body>
</html>