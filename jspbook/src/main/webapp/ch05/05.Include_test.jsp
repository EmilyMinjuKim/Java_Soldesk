<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="04_1.Error2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Include 지시어 테스트</title>
</head>
<body>
<div align="center">
	<h2>Include 지시어 실습</h2>
	<hr />
	<%@ include file="05_1.menu.jsp" %>
	<p/>
	<table border="0" cellpadding=5 cellspacing=1>
		<tr>
			<td><font size=-1><%@ include file="05_2.news.jsp" %></font></td>
			<td width="20"></td>
			<td><font size=-1><%@ include file="05_3.shopping.jsp" %></font></td>
		</tr>
	</table>
</div>
</body>
</html>