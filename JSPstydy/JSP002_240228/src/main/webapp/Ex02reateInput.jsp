<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align = "center">

		<br>
	<fieldset>
	
		<legend> 랜덤당첨 작성</legend>
			<%
			response.setContentType("text/html; charset=utf-8");
			int num1=Integer.valueOf(request.getParameter("soo"));
			%>
		<form action="Ex02randomWInner.jsp" method="post">
			주제 : <input type="text" value="오늘 점심 메뉴는?" name="title">
			<br>
			<%
				for(int i =1; i<=num1; i++){
			%>		
				아이템 <%=i %>:<input type = "text" name="food">
				<br>
				<% 
				}
			%>
			<br>
			<input type="submit" value="시작">
		</form>
	</fieldset>
</body>
</html>