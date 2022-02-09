<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String productName = request.getParameter("product");

//세션 영역에 productList라는 이름의 ArrayList를 생성.
ArrayList<String> list = (ArrayList)session.getAttribute("productList");

//만약 null이라면 새로운 객체 생성.
if(list == null){
	list = new ArrayList<String>();
	session.setAttribute("productList", list);
}	//list객체 생성

list.add(productName);
%>

<script type="text/javascript">
	alert("<%=productName %>가 추가되었습니다.");
	history.go(-1);
</script>

</body>
</html>