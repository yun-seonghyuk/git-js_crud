<%@page import="web05.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<Member> memberList = new ArrayList<>();
	session.setAttribute("memberList", memberList); 
	session.setAttribute("log", null);
	
	response.sendRedirect("main.jsp");
%>
	
</body>
</html>