<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Result</title>
</head>
<body>
<div align="center">
<h2>EncForm_Result</h2>
<hr />
<%-- <%request.setCharacterEncoding("UTF-8"); %> 생략 가능 (Filter에 설정해뒀기 때문) --%> 
처리 결과 : ${param.title }<br>
</div>
</body>
</html>