<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session</title>
</head>
<body>
<div align="center">
<h2>Session</h2>
<hr />
<%
	if(session.isNew()){
		out.println("<script>alert('세션이 해제되어 다시 설정합니다.');</script>");
		session.setAttribute("login", "홍길동");
	}
%>

# <%=session.getAttribute("login") %>님, 환영합니다.<br>
1. 세션 ID : <%=session.getId() %><br>
<% session.setMaxInactiveInterval(5); %> <!-- 세션의 유지시간이 최대 5초 -->
2. 세션 유지시간 : <%=session.getMaxInactiveInterval() %>
</div>
</body>
</html>