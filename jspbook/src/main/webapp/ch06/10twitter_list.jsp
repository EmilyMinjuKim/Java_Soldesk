<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");

String user = request.getParameter("username");
if(user!=null){
	session.setAttribute("user", user);
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Simple Twitter</title>
</head>
<body>
<div align="center">
	<h3>My Simple Twitter</h3>
	<hr />
	<form action="10tweet.jsp" method="post">
		<%=session.getAttribute("user") %>
		<input type="text" name="msg" />
		<input type="submit" value="Tweet" />
	</form>
	<hr />
	<div align="left">
		<ul>
		<%
		ArrayList<String> msg = (ArrayList<String>)application.getAttribute("msg");
		
		if(msg!=null){
			for(String message:msg){
				out.println("<li>"+message+"</li>");
			}
		}
		%>
		</ul>
	</div>
</div>
</body>
</html>