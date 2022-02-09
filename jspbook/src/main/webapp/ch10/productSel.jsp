<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>productSel</title>
</head>
<body>
<div align="center">
<h2>상품 옵션 선택 내역</h2>
<hr />
1. 선택한 품목 : ${param.sel }<br>
2. item5의 가격 : ${product.num5 }<br> 	<!-- bean에 있는 객체도 인식 가능 -->
3. num1+num2 : ${product.num1 + product.num2 }
</div>
</body>
</html>