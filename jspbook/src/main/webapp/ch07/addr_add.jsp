<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8") ;%>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/> <!-- 저장 -->
 
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
am.add(addr);  //AddrBean에 등록된 정보를 AddrManager에 모두 추가  
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <jsp:getProperty name="addr" property="username" /><p>
전화번호 : <%=addr.getTel() %>><p>
이메일 : <%=addr.getEmail() %><p>
성별 : <%=addr.getGender() %>
<hr />
<a href="addr_list.jsp">목록보기</a>
</div>
</body>
</html>