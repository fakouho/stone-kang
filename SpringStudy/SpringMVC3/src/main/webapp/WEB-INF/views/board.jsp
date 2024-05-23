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
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!--  자동완성 기능 jquery-ui 라이브러리 -->
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">
<!-- chart.js라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2  "></script>
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
			<div class="card-header">게시판 연습</div>
			<div class="card-body">
				<form id="searchForm" onsubmit="return false;" class="form-inline">
					<div align="right" class="form-group">
						<select name="type" class="form-control btn-warning" id="sel1">
							<option class="btn-light">작성자</option>
							<option class="btn-light">제목</option>
						</select>
					</div>
					<input id="auto_complete" name="text" type="text"
						class="form-control"> <input id="searchBtn" type="submit"
						class="btn btn-warning" value="검색">
				</form>
				<br>

				<table id="myTable" class="table table-bordered table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<!-- JSTL/EL 사용해서 request영역안에 저장에 잇는 게시글 정보를 전부 화면에 출력 -->
					<c:forEach items="${list}" var="b">
						<tr>
							<td>${b.idx}</td>
							<td>
								<!-- 1. QueryString으로 데이터보내기 
									 2. 경로상에 그냥 바로 데이터 포함해서 보내기
								--> <a href="${cpath}/boardContent/${b.idx}">${b.title}</a>
							</td>
							<td>${b.writer}</td>
							<td>${b.indate}</td>
						</tr>
					</c:forEach>
				</table>
				<button onclick="location.href='${cpath}/register'"
					class="btn-primary btn-sm">글쓰기</button>
				<button class="btn btn-success btn-sm chartBtn">차트보기</button>
			</div>
			<div class="card-footer myChartArea">
				<h1>차트영역</h1>
				<canvas id = "myChart"></canvas>



			</div>
		</div>
	</div>
	<script type="text/javascript">
		var cpath = "${cpath}";
	</script>
	<script>
		// 1. 처음 실행 시, myChartArea 영역을 숨김
		$(".myChartArea").hide();
		// 2. 차트보기 버튼을 클릭 시 myChartArea 영역을 보여주거나 숨김
		$(".chartBtn").on("click", function() {
			// myChartArea 영역이 숨겨져 있다면 보여주기, 그렇지 않으면 숨기기
			if($(".myChartArea").css("display")=="none"){
			$(".myChartArea").slideDown();
			// $(".myChartArea").slideToggle();=up/down기능
			$.ajax({
				url : `${cpath}/artist`,
				dataType: "json",
				success : function(res){
					console.log("받아온 결과값>>",res);
					// 라벨,데이터 생성
					var labels =[];
					var datas =[];
					for(var i =0; i<res.length; i++){
						labels.push(res[i].artist);
						datas.push(res[i].keywordCnt);
					}
					drawChart(labels,datas);
				}
			})
			}else{
				// canvas 삭제하고
				$("#myChart").remove();

				// 다시 새로운 canvas 추가하기
				$(".myChartArea").append('<canvas id="myChart"></canvas>');
				
				$(".myChartArea").slideUp();
			
			}
		})
		function drawChart(labels,datas){
			// 1. 차트를 그릴 canvas 태그를 선택
			var ctx = $("#myChart");
			const data = {
					  // DB에서 조회한 아티스스명으로 변경
					  labels: labels,
					  datasets: [{
					    label: 'My First Dataset',
					    // DV에서 조회한 키워드 빈도수로 변경
					    data: datas,
					    backgroundColor: [
					      'rgb(255, 99, 132)',
					      'rgb(54, 162, 235)',
					      'rgb(255, 205, 86)',
					      'rgb(255, 205, 90)',
					      'rgb(255, 205, 95)'
					    ],
					    hoverOffset: 4
					  }]
					};
			const options = {
					// 차트를 상대적인 크기가 아니라, 내가 원하는 크기로 변경
					// display: relative 속성을 풀어주는 방법
					responsive : false,
					// 따로 설치한 플러그인 사용하기
					plugins : {
						datalabels :{
							color : [
								"white",
								"white",
								"white",
								"black",								
								"black"							
							],
							formatter:function(v,c){
								console.log("f확인>",v)
								console.log("c확인>",c)
								return c.chart.data.labels[c.dataIndex]								
							},
							font : {
								size : 12
							}
						}					
					}
			}
			const config = {
					  plugins : [ChartDataLabels],
					  // 1. 차트 종류지정
					  type: 'pie',
					  // 2, 들어갈 데이터 지정
					  data: data,
					  options : options,
					};
			// 2. 차트 그리기 -> new Chart(차트영역,객체형식으로 된 차트의 옵션)
			new Chart(ctx, config);
		}
	        
	</script>
	<script src="resources/js/myfirstjs.js"></script>
</body>
</html>