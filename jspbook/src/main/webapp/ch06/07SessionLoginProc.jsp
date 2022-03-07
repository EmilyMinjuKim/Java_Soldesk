<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessionLoginProc</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

//사용자로부터 넘어온 데이터 
String id = request.getParameter("id");
//어느 페이지에서도 데이터 공유 가능한 session 영역
session.setAttribute("id", id);
session.setMaxInactiveInterval(5);
%>

<h2>당신의 id는 <%=id %>입니다.</h2>
<a href="07SessionShoppingMall.jsp">쇼핑몰 바로가기</a>
</body>
</html>