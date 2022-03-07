<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberJoinProc</title>
</head>
<body>
<center>
<h2>회원 정보 보기</h2>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="mbean" class="jspbook.ch07.MemberBean">

<%-- <jsp:setProperty name="mbean" property="id"/>
<jsp:setProperty name="mbean" property="pass"/>
<jsp:setProperty name="mbean" property="email"/>
<jsp:setProperty name="mbean" property="tel"/>
<jsp:setProperty name="mbean" property="address"/> --%>

<jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>


<h2>고객님의 아이디 : <jsp:getProperty name="mbean" property="id"/> </h2>
<h2>고객님의 비밀번호 : <jsp:getProperty name="mbean" property="pass"/></h2>
<h2>고객님의 이메일 : <jsp:getProperty name="mbean" property="email"/></h2>
<h2>고객님의 전화번호 : <jsp:getProperty name="mbean" property="tel"/></h2>
<h2>고객님의 주소 : <jsp:getProperty name="mbean" property="address"/></h2>
<hr />
<h2>전화번호 : <%=mbean.getTel() %></h2>
</center>

</body>
</html>