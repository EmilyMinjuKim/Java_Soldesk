<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sell Product</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

session.setAttribute("username", request.getParameter("username"));
%>
<body>
<div align="center">
	<h2>상품 검색</h2>
	<hr />
	<%=session.getAttribute("username") %>님 환영합니다.
	<hr />
	<p/>
	<form action="09add.jsp" method="post">
		<select name="product">
			<option>떡볶이</option>
			<option>먹태</option>
			<option>반건조 오징어</option>
			<option>플레이트</option>
			<option>곱창 전골</option>
		</select>
		<input type="submit" value="추가" />
	</form>
	<p/>
	<a href="09checkOut.jsp">장바구니 결제</a>
</div>
</body>
</html>