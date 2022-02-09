<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ELCalProc</title>
</head>
<body>
<center>
<h2>계산 결과</h2>
<%-- <%
String num1 = request.getParameter("num1");
String operator = request.getParameter("operator");
String num2 = request.getParameter("num2");

int result = 0;
if(operator.equals("+"))
	result = Integer.parseInt(num1)+Integer.parseInt(num2);

out.println(result);
%> --%>
<%
String operator = request.getParameter("operator");
if(operator.equals("+")){
	%>
	결과: ${param.num1 + param.num2 }
	<%
} else if(operator.equals("-")){
	%>
	결과: ${param.num1 - param.num2 }
	<%
} else if(operator.equals("*")){
	%>
	결과: ${param.num1 * param.num2 }
	<%
} else if(operator.equals("/")){
	%>
	결과: ${param.num1 / param.num2 }
	<%
}
%>
</center>
</body>
</html>