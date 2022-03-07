<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application</title>
</head>
<body>
<div align="center">
	<h2>application 영역</h2>
	<hr />
	1. 서버 정보 : <%=application.getServerInfo() %><br>
	2. 서버 API 정보 : <%=application.getMajorVersion()+"."+application.getMinorVersion() %><br>
	3. 08application.jsp의 실제 경로 : <%=application.getRealPath("08application.jsp") %>
	<hr />
	setAttribute로 username 변수에 길동이 저장<p>
	<%
	application.setAttribute("username", "길동이");
	application.log("username=길동이");
	application.setAttribute("count", 0);
	%>
	
	<a href="08application_result.jsp">application_result</a>
</div>
</body>
</html>