<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessionLoginProc</title>
</head>
<body>
<center>
<h1>세션 로그인</h1>
<%
 //request
 String id=request.getParameter("id");
 String pass=request.getParameter("pass");
 
 //session
 session.setAttribute("id", id);
 session.setAttribute("pass", pass);
 session.setAttribute("name", "Tom");
 
 session.setMaxInactiveInterval(60); //1분
 
%>
<!-- my page구현시 사용 -->
<hr />
<h2><%= id %>님 반갑습니다</h2>
<a href="SessionUse.jsp?id=<%= id%>&pass=<%=pass%>">My Page</a>
<!-- <a href="SessionUse.jsp">My Page</a> -->

<!-- 세션 로그인 확인 -->
<%
response.sendRedirect("sessionMain.jsp");
%>




</center>
</body>
</html>