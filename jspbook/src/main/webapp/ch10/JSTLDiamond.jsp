<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Diamond</title>
</head>
<body>
<table>
<%
for(int i = 4; i >= 0; i--){
	out.println("<tr>");
	for(int j = 0; j < i; j++){
		out.print("<td></td>");
	}
	for(int k=0; k<(5-i)*2-1; k++){
		out.print("<td>*</td>");
	}
	out.println("</tr>");
}
%>

<%
for(int i = 1; i <= 5; i++){
	out.println("<tr>");
	for(int j = 0; j < 5-i; j++){
		out.print("<td></td>");
	}
	for(int k=0; k < (i*2-1); k++){
		out.print("<td>*</td>");
	}
	out.println("</tr>");
}
%>
</table>

<table>
<c:forEach var="i" begin="1" end="5">
	<tr>
		<c:forEach var="j" begin="0" end="${5-i }">
			<td></td>
		</c:forEach>
		<c:forEach var="k" begin="1" end="${i*2-1 }">
			<td>*</td>
		</c:forEach>
	</tr>
</c:forEach>
</table>

</body>
</html>