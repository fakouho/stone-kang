<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 1. post로 넘어오는 요청에 대하여 인코딩 작업
		request.setCharacterEncoding("UTF-8");
		// 2. 요청에 대한 데이터값 꺼내오기 -> 
		int data1 = Integer.valueOf(request.getParameter("data1"));
		int data2 = Integer.valueOf(request.getParameter("data2"));
		String op = request.getParameter("op");
		// 3. 가져온 데이터에 대한 로직 처리
		int total =0;
		if("+".equals(op)){
			total = data1 + data2;
		}else if("-".equals(op)){
			total = data1 - data2;
		}else if("*".equals(op)){
			total = data1 * data2;
		}else{
			total = data1 / data2;
		}
	%>	
	<!-- 4. 결과에 대한 출력화면 만들기 -->
	<%=data1 %><%=op %><%=data2 %>=<%=total %>

</body>
</html>