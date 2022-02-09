<%@page import="model.MemberDBVo"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Update</title>
</head>
<body>
<%
String id = request.getParameter("id");
MemberDAO mdao = new MemberDAO();
MemberDBVo bean = mdao.selectMember(id);
%>
<center>
<h2><%=id %>님의 회원정보 수정</h2>
<form action="memberUpdateProc.jsp" method="post">
	<input type="hidden" name="id" value="<%=id %>" />
	<table width="400" border="1">
		<tr height="40">
			<td width="150" bgcolor="powderblue" align="center">이메일</td>
			<td width="250" align="center"><input type="text" name="email" value="<%=bean.getEmail() %>" size="30" /></td>
		</tr>
		<tr height="40">
			<td width="150" bgcolor="powderblue" align="center">전화번호</td>
			<td width="250" align="center"><input type="text" name="tel" value="<%=bean.getTel() %>" size="30" /></td>
		</tr>
		<tr height="40">
			<td width="150" bgcolor="powderblue" align="center">주소</td>
			<td width="250" align="center"><input type="text" name="address" value="<%=bean.getAddress() %>" size="30" /></td>
		</tr>
		<tr height="40">
			<td width="150" bgcolor="powderblue" align="center">비밀번호</td>
			<td width="250" align="center"><input type="text" name="pw" size="30" /></td>
		</tr>
		<tr height="40">
			<td align="center" colspan="2" bgcolor="skyblue">
				<input type="submit" value="완료" />
				<input type="reset" value="취소" />
				<input type="button" value="회원목록" onclick="location.href='memberList.jsp'"/>
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>