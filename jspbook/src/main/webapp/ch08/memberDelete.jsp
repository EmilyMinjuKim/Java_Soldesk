<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDelete</title>
</head>
<body>
<%
String id = request.getParameter("id");
%>
<center>
<h1>회원 정보 삭제</h1>
<form action="memberDeleteProc.jsp" method="post">
	<input type="hidden" name="id" value="<%=id %>" />
	<table width="400" border="1">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="250"><%=id %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">비밀번호</td>
			<td align="center" width="250"><input type="password" name="pw" /></td>
		</tr>
		<tr height="50">
			<td align="center" colspan="2">
				<input type="submit" value="삭제" />
				<input type="button" value="목록보기" onclick="location.href='memberList.jsp'" />
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>