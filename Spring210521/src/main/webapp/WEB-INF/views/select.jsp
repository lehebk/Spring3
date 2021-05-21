<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> 
	div{
	background: yellow;
	}
	table, tr, td{
	
	border: 1px black solid;
	border-collapse: collapse;
	}	
</style>
</head>
<body>
	<h2>select.jpg</h2>
	<c:forEach var="data" items="${selectList}">
	${data} <br>
	</c:forEach>
	<!-- 기본주소요청 -->
	<a href="./">홈으로</a>
	
	<div>
	<table>
	<c:forEach var="value" items="${selectList}">
	<tr>
	<td>${value.col1}</td>
	<td>${value.col2}</td>
	<td>${value.col3}</td> 
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>