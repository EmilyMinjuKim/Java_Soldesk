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
	<form action="ELCalRecursive.jsp" method="post">
		<table width="500">
			<tr height="45">
				<td width="80"><input type="text" name="num1" value="${param.num1 }" /></td>
				<td width="80" align="center">
					<select name="operator">
						<option selected>+</option>
						<option>-</option>
						<option>*</option>
						<option>/</option>
					</select>
				</td>
				<td width="80"><input type="text" name="num2" value="${param.num2 }" /></td>
				<td width="20" align="center">=</td>
				<td width="80" align="center">
					<%
					String operator = request.getParameter("operator");
					if(operator==null){
						operator = "";
					}
					if(operator.equals("+")){
						%>
						<input type="text" value="${param.num1 + param.num2 }" />
						<%
					} else if(operator.equals("-")){
						%>
						<input type="text" value="${param.num1 - param.num2 }" />
						<%
					} else if(operator.equals("*")){
						%>
						<input type="text" value="${param.num1 * param.num2 }" />
						<%
					} else if(operator.equals("/")){
						%>
						<input type="text" value="${param.num1 / param.num2 }" />
						<%
					}
					%>
				</td>
				<td align="center"><input type="submit" value="계산" name="cal1" /></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>