<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<center>
	<h2>로그인</h2>
	<form action="09sellProduct.jsp" method="post">
		<table width="400" border="1" >
			<tr height="40" align="center">
				<td width="150">성명</td>
				<td width="250" align="center"><input type="text" name="username" /></td>
			</tr>
			<tr height="40" align="center" bgcolor="yellow">
				<td colspan="2"><input type="submit" value="전송" /></td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>