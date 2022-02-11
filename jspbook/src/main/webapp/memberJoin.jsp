<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberJoin</title>
</head>
<body>
<center> 
<h2>회원 가입</h2>
<form action="MProc" method="post">
<table width="400" border="1">
	 <tr height="40" >
	  <td align="center" width="150"> 아이디 </td>
	  <td width="250"> <input type="text" name="id" ></td>
	 </tr> 
	 <tr height="40" >
	  <td align="center" width="150"> 패스워드 </td>
	  <td width="250"> <input type="text" name="pw" ></td>
	 </tr> 
	 <tr height="40" >
	  <td align="center" width="150"> 이름 </td>
	  <td width="250"> <input type="text" name="name" ></td>
	 </tr> 
	 <tr height="40" >
	  <td align="center" width="150"> 전화 </td>
	  <td width="250"> <input type="text" name="phone" ></td>
	 </tr> 
	 <tr height="40" >
	  <td align="center" width="150"> 이메일 </td>
	  <td width="250"> <input type="text" name="email" ></td>
	 </tr> 
	 <tr height="40" >
	  <td align="center" colspan="2"><input type="submit" value="회원가입"></td>
	 </tr>
</table>
</form>
</center>
</body>
</html>