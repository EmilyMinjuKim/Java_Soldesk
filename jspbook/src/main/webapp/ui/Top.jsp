<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
</head>
<body>
<%
//로그아웃 클릭시 로그아웃 되었다는 신호를 줌
String logout=request.getParameter("logout");
if(logout != null){ // 로그아웃 상태
	session.setAttribute("id", null);
	session.setMaxInactiveInterval(0); //세션 해제
}

String id=(String)session.getAttribute("id"); //로그인
if(id==null){ //null처리
	id="Guest";
}
%>

<center>
<table width="1200">
<tr height="100">
<!-- 로고 이미지 -->
<td colspan="2" align="center" width="220"><img src="../img/logo.jpg" width="200" height="70"></td> 
<td colspan="4" align="center"><font size="10" color="orange"> My Own Spring Camp</td>
</tr>

<tr height="50">
<td width="130" align="center"><a href="sessionMain.jsp?camping=1" style="text-decoration: none">Tent</a></td>
<td width="130" align="center"><a href="sessionMain.jsp?camping=2" style="text-decoration: none">Chair</a></td>
<td width="130" align="center"><a href="sessionMain.jsp?camping=3" style="text-decoration: none">Dishware</a></td>
<td width="130" align="center"><a href="sessionMain.jsp?camping=4" style="text-decoration: none">Sleeping</a></td>
<td width="130" align="center"><a href="sessionMain.jsp?camping=5" style="text-decoration: none">Lantern</a></td>
<td width="130" align="center"><a href="sessionMain.jsp?camping=6" style="text-decoration: none">Table</a></td>
<td width="170" align="center">
<%
if(id.equals("Guest")){
%>
	<%=id %>님 <button onclick="location.href='sessionMain.jsp?camping=11'">로그인</button>
	
<% }else{%>
	<%=id %>님 <button onclick="location.href='sessionMain.jsp?logout=100'">로그아웃</button>
<%}%>


</td>
</tr>
</table>
</center>
</body>
</html>