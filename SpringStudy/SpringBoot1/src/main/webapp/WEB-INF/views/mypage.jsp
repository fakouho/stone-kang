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
<h1>마이 페이지</h1>
<form  action="${cpath}/mypage">
	<table border="1">
	<tr>
            <td>아이디</td>
            <td>${param.myData}</td>
            
        </tr>
	
	
       <%-- <tr>
            <td>아이디</td>
            <td>${myData.id}</td>
        </tr>
        <tr>
            <td>이름</td>
            <td>${myData.name}</td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td>${myData.tel}</td>
        </tr>
         --%>
    </table>
</form>

</body>
</html>