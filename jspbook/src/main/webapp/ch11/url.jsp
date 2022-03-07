<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c:url</title>
</head>
<body bgcolor="ffffcc">
<h3>&lt; c:url &gt;</h3>
<c:url value="/ch11/choose.jsp" var="target">
	<c:param name="sel">a</c:param>
</c:url>

<!-- c:url 링크 하나 올려놓고 anchor tag로 계속 호출해야 할 때 사용 -->

<hr />
출력 : ${target }<br>
링크 : <a href="${target }">choose.jsp-a 선택</a>
</body>
</html>