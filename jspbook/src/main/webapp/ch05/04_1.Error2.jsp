<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page2</title>
</head>
<jsp:useBean id="now" class="java.util.Date" />
<body>
<div align="center">
	<h2>관리자에게 문의하세요.</h2>
	<hr />
	<%= exception %>
	<table>
		<tr width="100%" bgcolor="pink"  align="center">
			<td>요청하신 페이지를 찾을 수 없습니다.<br>
			URL주소를 다시 한 번 확인해주세요.</td>
		</tr>
		<tr align="center">
			<td>${now}<p>		<!-- EL tag -->
			요청 실패 URL : ${pageContext.errorData.requestURI }<br>
			상태 코드 : %{pageContext.errorData.statusCode}<br>
			</td>
		</tr>
	</table>
</div>
</body>
</html>