<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div align="center">
<h2>page_control_end(forward_action 및 sendRedirect)</h2>
<hr />
지금 보여지는 화면은 page_control_end.jsp에서 출력하고 있습니다.
<hr />
이름 : <%=request.getParameter("username") %><br>
전화번호 : <%=request.getParameter("tel") %>
</div>
</body>
</html>