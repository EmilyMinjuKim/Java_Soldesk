<%@page import="model.MemberDAO"%>
<%@page import="model.MemberDBVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Info</title>
</head>
<body>
<%
String id = request.getParameter("id");
MemberDAO mdao = new MemberDAO();
MemberDBVo bean = mdao.selectMember(id);
%>
<center>
<h2><%=id %>님의 회원정보</h2>
<table width="400" border="1">
	<tr height="40">
		<td width="150" bgcolor="powderblue" align="center">이메일</td>
		<td width="250" align="center"><%=bean.getEmail() %></td>
	</tr>
	<tr height="40">
		<td width="150" bgcolor="powderblue" align="center">전화번호</td>
		<td width="250" align="center"><%=bean.getTel() %></td>
	</tr>
	<tr height="40">
		<td width="150" bgcolor="powderblue" align="center">주소</td>
		<td width="250" align="center"><%=bean.getAddress() %></td>
	</tr>
	<tr height="40">
		<td width="150" bgcolor="powderblue" align="center">관심분야</td>
		<td width="250" align="center"><%=bean.getInterest() %></td>
	</tr>
	<tr height="40">
		<td width="150" bgcolor="powderblue" align="center">나이</td>
		<td width="200" align="center"><%=bean.getAge() %></td>
	</tr>
	<tr height="40">
		<td width="150" bgcolor="powderblue" align="center">정보</td>
		<td width="250" align="center"><%=bean.getInfo() %></td>
	</tr>
	<tr height="40">
		<td align="center" colspan="2" bgcolor="skyblue">
			<input type="button" value="수정" onclick="location.href='memberUpdate.jsp?id=<%=id %>'" />
			<input type="button" value="삭제" onclick="location.href='memberDelete.jsp?id=<%=id %>'" />
			<input type="button" value="목록보기" onclick="location.href='memberList.jsp'" />
			<input type="button" value="회원가입" onclick="location.href='MemberDBJoinHome.jsp'" />
		</td>
	</tr>
</table>
</center>
</body>
</html>