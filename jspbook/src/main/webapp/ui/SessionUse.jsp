<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessionUse</title>
</head>
<body>
<%
//세션이 넘어오지 않는경우
/* String id=request.getParameter("id");
String pass=request.getParameter("pass"); */

//세션이 넘어오는 경우
String id=(String)session.getAttribute("id");
String pass=(String)session.getAttribute("pass");
%>
<center>
<h2><%= id %>님 반갑습니다</h2>
<h1>세션 사용자 정보</h1>
넘어오는 페이지 (oracle sql)
<hr />
</center>



</body>
</html>