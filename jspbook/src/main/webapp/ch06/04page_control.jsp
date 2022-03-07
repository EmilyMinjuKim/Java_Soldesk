<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forward, SendRedirect</title>
</head>
<body>
<center>
<h2>Forward, SendRedirect</h2>
<hr />
<form action="04forward_action.jsp" method="post">
	form action : <input type="text" name="username"/>
	<input type="submit" value="Request" />
</form>
<hr />
<form action="04response_sendRedirect.jsp" method="post">
	response sendRedirect : <input type="text" name="username"/>
	<input type="submit" value="Request" />
</form>
</center>
</body>
</html>