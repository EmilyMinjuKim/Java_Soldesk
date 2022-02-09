<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check Out</title>
</head>
<body>
<div align="center">
	<h2>결제 시스템</h2>
	선택한 상품 목록
	<hr />
	<%
	ArrayList<String> list = (ArrayList)session.getAttribute("productList");
	if(list==null){
		out.println("장바구니가 비어있습니다.");
	} else{
		for(Object productName:list){
			out.println(productName+"<br>");
		}
	}
	%>
</div>
</body>
</html>