<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c:set</title>
</head>
<body>
<h3>&lt; c:set &gt;</h3>
<c:set value="Hello World" var="msg" />msg1 : ${msg }<br>
msg2 : <%= pageContext.getAttribute("msg") %><br>
<p/>
<hr />
<!-- Member() 호출 : Listener(InitialMember.java)에 올려둔 members가 호출되는 것. -->
<c:set target="${member }" property="email" value="changed@sol.net" />
<!-- default constructor가 바뀜 -->
Member name : ${member.name }<br>
Member email : ${member.email }
</body>
</html>