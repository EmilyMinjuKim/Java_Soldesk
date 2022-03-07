<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reponse_sendRedirect</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

response.sendRedirect("04page_control_end.jsp");
%>
</body>
</html>

<!-- response.sendRedirect() : 메서드 요청한 url이 아닌 전혀 다른 url로 이동됨. -->