<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- /join-proces 데이터 전송하면, 데이터를 추가 jpa사용해서 index.jsp이동-->
	<form action="${cpath}/join-process" method="post">
		ID : <input type="text" name="id">
		<br>
		PW : <input type="text" name="pw">
		<br>
		NAME : <input type="text" name="name">
		<br>
		TEL : <input type="text" name="tel">
		<input type="submit" value="회원가입">
	</form>


</body>
</html>