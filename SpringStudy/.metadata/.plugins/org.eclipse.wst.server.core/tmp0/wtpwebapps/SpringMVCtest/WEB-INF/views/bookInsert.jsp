<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 입력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.jumbotron {
	background-color: #0062cc;
	color: #ffffff;
}
</style>
</head>
<body>
<div class="jumbotron text-center">
	<h1>도서 입력</h1>
	
</div>
<div class="container">
	<h2>입력 폼</h2>
	<form action="${cpath}/bookInsert.do" method="post">
		<div class="form-group">
			<label for="title">제목:</label>
			<input type="text"  name="title" >
		</div>
		<div class="form-group">
			<label for="author">작가:</label>
			<input type="text" name="author" >
		</div>
		<div class="form-group">
			<label for="company">출판사:</label>
			<input type="text"   name="company" >
		</div>
		<div class="form-group">
			<label for="isbn">ISBN:</label>
			<input type="text"  name="isbn">
		</div>
		<div class="form-group">
			<label for="count">보유도서수:</label>
			<input type="number" name="count" >
		</div>
		<button type="submit" class="btn btn-primary">입력</button>
		<button type="button" onclick="location.href='${cpath}/bookList'" class="btn btn-secondary">목록으로 돌아가기</button>
	</form>
</div>
</body>
</html>