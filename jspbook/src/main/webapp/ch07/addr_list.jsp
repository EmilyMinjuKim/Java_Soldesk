<%@page import="jspbook.ch07.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_list</title>
</head>
<body>
<center>
<h2>주소록</h2>
<hr />
<a href="addr_form.html">주소록 등록</a>
<p/>

<form action="sname.jsp" method="post">
검색 : <input type="text" name="sname" >
<input type="submit" value="검색" >
</form>

<p>
<table width="500" border="1">
<tr align="center">
<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>메뉴</td></tr>
<%
	for(AddrBean ab:am.getAddrlist()){
%>
    <tr>
    <td><%=ab.getUsername() %></td>
    <td><%=ab.getTel() %></td>
    <td><%=ab.getEmail() %></td>
    <td><%=ab.getGender() %></td>
    <td><font size=-1>[수정]&nbsp;[<a href="addr_del.jsp?sname=<%=ab.getUsername() %>">삭제</a>]</font></td></tr>
<%} %>

</table>
</center>

</body>
</html>