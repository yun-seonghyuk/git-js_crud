<%@page import="web05.Member"%>
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
	request.setCharacterEncoding("UTF-8");
	List<Member> memberList = (List)session.getAttribute("memberList");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String log = (String)session.getAttribute("log");
	int index = 0;
	boolean check = false;
	for(int i = 0; i < memberList.size(); i++){
		if(memberList.get(i).getUserPwd().equals(pw)&&
			memberList.get(i).getUserId().equals(log)){
			index = i;
			check = true;
			break;
		}
	}
	if(check == true){
		memberList.remove(index); 
		session.setAttribute("memberList", memberList);
		session.removeAttribute("log");
		request.getRequestDispatcher("main.jsp").forward(request, response);	
	}else{
		response.sendRedirect("deleteForm.jsp");
	}
	
	
	
%>
</body>
</html>