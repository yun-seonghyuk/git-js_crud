<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	
	String userId = request.getParameter("userId");
	session.setAttribute("userId", userId);
	
	String userPwd = request.getParameter("userPwd");
	session.setAttribute("userPwd", userPwd);
	
	request.getRequestDispatcher("loginCheck.jsp").forward(request, response);
	%>
