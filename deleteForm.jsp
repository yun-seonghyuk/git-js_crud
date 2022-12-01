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
		List<Member> memberList = (List)session.getAttribute("memberList");
		String log = (String)session.getAttribute("log");
		int index = 0;
		
		for(int i = 0; i < memberList.size(); i++){
			if(memberList.get(i).equals(log)){
				index = i;
				break;
			}
		}
	%>
	<div align="center">
		<h1>비밀번호 입력</h1>
		<form action="deleteResult.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><%=log %></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="pw"> </td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
			<a href="main.jsp">메인으로</a>
		</form>
	</div>
</body>
</html>