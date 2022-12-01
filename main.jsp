<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>메인 페이지</h1>
		<table border="1">
			<tr>
				<td align="center">
				<% String log = (String)session.getAttribute("log"); %>
				<% if(log == null){ %>
						<a href="joinForm.jsp">회원가입</a>
						<a href="loginForm.jsp">로그인</a>	
				<%  }else{ %>
						<a href="logoutResult.jsp">로그아웃</a>
						<a href="deleteForm.jsp">회원탈퇴</a>
						<a href="updateForm.jsp">회원정보수정</a>
				<%  } %>	
				</td>
			</tr>
		</table>
	</div>
	
	
</body>
</html>