<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResponseProc</title>
</head>
<body>
<%
	//model
	String dbid = "system";
	String dbpw = "system";
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(dbid.equals(id) && dbpw.equals(pw)){
		session.setAttribute("id", id);
		response.sendRedirect("05ResponseLogin.jsp");
	} else{
		%>
		<script type="text/javascript">
			
		</script>
		<%
	}
%>
</body>
</html>