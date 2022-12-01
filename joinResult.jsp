<%@page import="java.util.List"%>
<%@page import="web05.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("UTF-8");
	List<Member> memberList = (List)session.getAttribute("memberList");	
	
	String joinName = request.getParameter("joinName");
	
	String joinId = request.getParameter("joinId");
	
	String joinPassword = request.getParameter("joinPassword");
	
	
	
	
	if(joinName == null || joinName.equals("") ||
	   joinId == null || joinId.equals("") ||
	   joinPassword == null || joinPassword.equals("")){
		response.sendRedirect("joinForm.jsp");
	}else{
		web05.Member member = new web05.Member(joinName, joinId, joinPassword);
		memberList.add(member);
		session.setAttribute("memberList", memberList);  
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);	
	}
	
	for(int i = 0; i < memberList.size(); i++){
		System.out.println(memberList.get(i).getUserId());
		System.out.println(memberList.get(i).getUserName());
		System.out.println(memberList.get(i).getUserPwd());
	}
	
%>
