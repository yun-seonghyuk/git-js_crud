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
		<h1>회원가입 페이지</h1>
		<form action="joinResult.jsp" method="post">
			<table border="1">
				<tr>	
					<td>이름</td> 
					<td><input type="text" name="joinName"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="joinId"></td>
				</tr>
				<tr>	
					<td>비밀번호</td> 
					<td><input type="password" name="joinPassword"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">	
						<input type="submit" value="회원가입"/>
					</td>
				</tr>		
			</table>
			<a href="main.jsp">메인화면</a>
		</form>
	</div>
</body>
</html>