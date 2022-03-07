<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tweet</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String msg = request.getParameter("msg");
Object username = session.getAttribute("user");
ArrayList<String> message = (ArrayList<String>)application.getAttribute("msg");

if(message==null){
	message = new ArrayList<String>();
	application.setAttribute("message", message);
}
Date date = new Date();
SimpleDateFormat f = new SimpleDateFormat(("MM/dd HH시mm분"), Locale.KOREA);
message.add(f.format(date) + " (" + username + ") : " + msg);

//tomcat 콘솔에 출력
application.log(msg + " <- 메세지 추가됨");

response.sendRedirect("10twitter_list.jsp");
%>
</body>
</html>