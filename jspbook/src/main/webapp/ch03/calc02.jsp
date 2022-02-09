<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 자바문법: CalcBean calc = new CalcBean(); -->
<jsp:useBean id="calc" class="jspbook.ch03.CalcBean" />

<!-- calc.num1... 멤버변수의 setter 메소드를 사용하는 것과 같다. -->
<jsp:setProperty property="*" name="calc"/>

<% calc.calculate(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>calc02</title>
</head>
<body>
	<div align="center">
		<h3>계산기</h3>
		<hr />
		<form name=form1 method="post">
			<input type="text" name="num1" width="200" size="5" />
			<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select> 
			<input type="text" name="num2" width="200" size="5" />
			<input type="submit" value="연산결과" name="B1" />
			<input type="reset" value="다시계산" name="B2" />
		</form>
		<hr />
		결과 : <%= calc.getResult() %> <br>
		결과 : <jsp:getProperty property="result" name="calc"/>
	</div>
</body>
</html>