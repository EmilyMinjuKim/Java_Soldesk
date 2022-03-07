<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Include Action</title>
</head>
<body>
	<h2>06.Include_action.jsp에서 06_1.footer.jsp 호출</h2>
	<p/>
	06.Include_action.jsp에서 output되는 메세지입니다.<br>
	<hr />
	<jsp:include page="06_1.footer.jsp">
		<jsp:param value="minju126@hotmail.com" name="email"/>
		<jsp:param value="010-2222-3333" name="tel"/>
	</jsp:include>
	<h2>06.Include_action.jsp 종료됩니다.</h2>
</body>
</html>