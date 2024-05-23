<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
	<%
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		if(id.equals("smart")& pw.equals("123")){
			//response.sendRedirect("Ex04LoginSuccess.jsp?data="+id);
			// forward 방식 : 요청에 대한 내용을 공유하며 새로운 요청을 할 수 있는 기법!
			RequestDispatcher rd = request.getRequestDispatcher("Ex04LoginSuccess.jsp");
			// 공유하고자 하는 데이터 연결하기
			request.setAttribute("id", id);
			rd.forward(request, response);
			
		}else{
			response.sendRedirect("Ex04LoginFail.jsp");
		 }
	%>
</body>
</html>