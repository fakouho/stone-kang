<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.jumbotron {
	background-color: #0062cc;

}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1>빅데이터 23차 게시판</h1>
		<p>집가고싶다 점심먹고 저녁먹고 야자하고 집가자</p>
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header">보유 도서 현황</div>
			<div class="card-body">
				<table class="table table-bordered table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작가</th>
						<th>출판사</th>
						<th>ISBN</th>
						<th>보유도서수</th>
					</tr>
					<c:forEach items="${list}" var="b">
						<tr>
							<td>${b.num}</td>
							<td>${b.title}</td>
							<td>${b.author}</td>
							<td>${b.company}</td>
							<td>${b.isbn}</td>
							<td>${b.count}</td>
						</tr>
					</c:forEach>
				</table>
				<button onclick="location.href='${cpath}/bookInsert'" 
				class="btn-primary btn-sm">입력화면</button>
			</div>
		</div>
	</div>
</body>
</html>