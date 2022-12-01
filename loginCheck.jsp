<%@page import="java.util.List"%>
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
		String userName = (String)session.getAttribute("userName");
		String userId = (String)session.getAttribute("userId");
		String userPwd = (String)session.getAttribute("userPwd");
		
		List<Member> memberList = (List)session.getAttribute("memberList");
		
		String log = (String)session.getAttribute("log"); 
		
		
		boolean check = false;
		for(int i = 0; i < memberList.size(); i++){
			if(memberList.get(i).getUserId().equals(userId)&&
				memberList.get(i).getUserPwd().equals(userPwd)){
				check = true;
				log = memberList.get(i).getUserId();
				session.setAttribute("log", log);
				break;
				
			}
		}
		if(check == true){
			request.getRequestDispatcher("loginPage.jsp").forward(request, response);
		}else{
			response.sendRedirect("joinForm.jsp");
		}
	%>
</body>
</html>