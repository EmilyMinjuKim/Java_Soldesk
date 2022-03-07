<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
request.setCharacterEncoding("UTF-8");
String sname=request.getParameter("sname");
AddrBean addr=am.getAddr(sname);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sname</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <%=addr.getUsername() %><p>
전화번호 : <%=addr.getTel() %><p>
이메일 : <%=addr.getEmail() %><p>
성별 : <%=addr.getGender() %>
<hr />
<a href="addr_list.jsp">목록보기</a>
</div>
</body>
</html>