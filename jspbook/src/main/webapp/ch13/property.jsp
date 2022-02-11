<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>property</title>
</head>
<body>
<div align="center">
<h2>Property</h2>
<hr />
ServletContext 초기 설정값 출력 <br>
name3 : <%=getServletContext().getInitParameter("name3") %><br>
workspace : <%=getServletContext().getInitParameter("workspace") %><br>
<h2>Admin Properties</h2>
<hr />
관리자 ID : ${prop.get('adminId') }<br>	<!-- prop이라는 객체를 통해서 불러오기 때문에 값이 노출됨. -->
OTP 인증번호 : ${otp }<br>	 	<!-- ch13/admin에 있는 파일에만 filter기능이 적용되므로 값이 노출되지 않음. -->
</div>
</body>
</html>