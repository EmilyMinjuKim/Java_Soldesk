<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forward Action</title>
</head>
<body>
	<h2>07.Forward_action.jsp에서 06_1.footer.jsp 호출</h2>
	<br>
	07.Forward_action.jsp의 모든 메세지는 출력될 수 없습니다.
	<hr/>
	<%! int a = 10; %>
	<jsp:forward page="06_1.footer.jsp">
		<jsp:param value="minju126@hotmail.com" name="email"/>
		<jsp:param value="010-2222-3333" name="tel"/>
	</jsp:forward>
	<h2>고생하셨습니다. 수업이 종료됩니다.</h2>
</body>
</html>