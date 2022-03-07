<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="b1" class="jspbook.ch12.Bank1Bean"/>
<jsp:useBean id="b2" class="jspbook.ch12.Bank2Bean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
if(request.getMethod().equals("POST")){
	if(b1.transfer(Integer.parseInt(request.getParameter("bal")))==true){
		out.println("<script>alert('이체가 정상적으로 완료되었습니다.');</script>");
	} else{
		out.println("<script>alert('이체 한도가 초과되었습니다.');</script>");
	}
}

b1.getData();
b2.getData();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Transaction_Bank</title>
</head>
<body>
<div align="center">
	<h3>계좌이체</h3>
	<hr />
	<table border="1" width="200" cellpadding="5" cellspacing="0">
		<tr>
			<td>이름 : <%=b1.getAname() %></td>
			<td>잔액 : <%=b1.getBalance() %></td>
		</tr>
		<tr>
			<td>이름 : <%=b2.getAname() %></td>
			<td>잔액 : <%=b2.getBalance() %></td>
		</tr>
	</table>
	<hr />
	
	<form method="post">
		이체 금액 : <input type="text" name="bal" width="200" size="5" />
		<input type="submit" value="이체" name="B1" />
		<input type="reset" value="취소" name="B2" />
	</form>
</div>
</body>
</html>