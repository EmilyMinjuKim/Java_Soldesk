<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_del</title>
</head>
<body>
<div align="center">
<h2>삭제 정보</h2>
<% String unname=request.getParameter("sname"); 
 am.getAddrlist().remove(am.getAddr(unname));
 %>
 <p>
 <hr />
 <a href="addr_list.jsp">목록보기</a>
</div>
</body>
</html>