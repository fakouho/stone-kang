<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키확인 홈페이지</h1>

	<%
		Cookie[] result = request.getCookies();
		
		for(int i =0; i<result.length; i++){
			out.print(result[i].getName()+"/"+result[i].getValue()+"<br>");
		}
	%>
	<a href="ex01_RemoveCookie.jsp"> 쿠키 삭제 </a>
	
	
	

</body>
</html>