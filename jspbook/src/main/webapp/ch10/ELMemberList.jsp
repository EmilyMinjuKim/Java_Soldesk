<%@page import="model.MemberDBVo"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member List</title>
</head>
<body>
<center>
<h2>전체 회원 정보 리스트</h2>
<%
MemberDAO mdao = new MemberDAO();
Vector<MemberDBVo> v = mdao.allselectMember();
request.setAttribute("vec", v);
%>

<table width="900" border="1">
	<tr height="40">
		<td width="120" align="center">아이디</td>
		<td width="120" align="center">이메일</td>
		<td width="120" align="center">전화번호</td>
		<td width="120" align="center">관심분야</td>
		<td width="120" align="center">직업</td>
	</tr>
	
	<c:forEach var="bean" items="${vec }"> 	<%-- for(MemberDBVo bean : v.size()) 확장 for문과 같음 --%>
	<tr height="40">
		<td width="120" align="center"><a href="memberInfo.jsp?id=${bean.id}">/a>${bean.id}</td>
		<td width="120" align="center">${bean.email}</td>
		<td width="120" align="center">${bean.tel}</td>
		<td width="120" align="center">${bean.interest}</td>
		<td width="120" align="center">${bean.job}</td>
	</tr>
	</c:forEach>

</table>
</center>
</body>
</html>