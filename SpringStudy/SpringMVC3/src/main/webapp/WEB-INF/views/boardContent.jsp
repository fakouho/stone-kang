<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
			<div class="card-header">게시글 상세보기</div>
			<div class="card-body">
				<table class="table table-bordered table-hover">
					<tr>
						<th>제목</th>
						<th>${board.title}</th>
					</tr>
					<tr>
						<th>내용</th>
						<th>${board.content}</th>
					</tr>
					<tr>
						<th>작성자</th>
						<th>${board.writer}</th>
					</tr>
					<tr>
						<th>작성일</th>
						<th>${board.indate}</th>
					</tr>
					<tr >
						<th colspan="2" class="text-center">
							<button onclick="location.href=''" class="btn-primary btn-sm">수정</button>
							<button onclick="location.href='${cpath}/boardDelete/${board.idx}'" class="btn-danger btn-sm">삭제</button>
							<button onclick="location.href=''" class="btn-success btn-sm">리스트</button>
						</th>
					</tr>
				</table>

			</div>
		</div>
	</div>
</body>
</html>