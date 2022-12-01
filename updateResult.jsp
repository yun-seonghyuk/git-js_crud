<%@page import="web05.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	List<Member> memberList = (List)session.getAttribute("memberList");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	int index = 0;
	for(int i = 0; i < memberList.size(); i++){
		if(memberList.get(i).getUserPwd().equals(pw)){
			index = i;
			break;
		}
	}
	memberList.get(index).setUserName(name);
	memberList.get(index).setUserPwd(pw);
	session.setAttribute("memberList", memberList);
	System.out.println(memberList.get(index).getUserName());
	System.out.println(memberList.get(index).getUserPwd());
	request.getRequestDispatcher("main.jsp").forward(request, response);
	
	
%>
