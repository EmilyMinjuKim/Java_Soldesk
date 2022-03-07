<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dbcp_sql</title>
</head>
<body>
<sql:query var="rs" dataSource="jdbc/xe">
	select username, email from jdbc_test
</sql:query>
<h2>등록정보</h2>
<c:forEach var="row" items="${rs.rows }">
	이름 : ${row.username }<br>
	이메일 : ${row.email }<p/>
</c:forEach>
</body>
</html>