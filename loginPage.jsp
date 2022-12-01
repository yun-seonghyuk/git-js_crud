<%@page import="web05.Member"%>
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
		String log= (String)session.getAttribute("log");
	%>
	<div align="center">
		<h3><%=log%>님 환영합니다</h3>
		<a href="main.jsp">메인화면</a>
	</div>
</body>
</html>