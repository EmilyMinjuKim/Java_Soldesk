<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 계산기</title>
</head>
<body>
<div align="center">
	<h3>계산기</h3>
	<hr />
	<form action="ELCalProc.jsp" method="post">
		<input type="text" name="num1" width="200" size="5" />
		<select name="operator">
			<option selected>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="num2" width="200" size="5" />
		<input type="submit" value="계산" name="cal1" />
		<input type="reset" value="다시입력" name="cal2" />
	</form>
</div>
</body>
</html>