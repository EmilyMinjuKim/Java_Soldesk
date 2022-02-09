<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단02</title>
</head>
<body>
<center>
<table width="800" height="400" border="1">
<%
for(int j=1; j<10; j++){
	int i = 8;
	int m = 1;
	%><tr><%
	for(int s=1; s<10; s++){
		%><td><%= m + "*" + j + "=" + m*j%></td>
		<%
		if(s%2!=0){
			m += i;		//m=9 m=8 m=7 m=6
			i--;		//i=7 i=5 i=3 i=1
		} else{
			m -= i;		//m=2 m=3 m=4 m=5
			i--;		//i=6 i=4 i=2 i=0
		}
	}
}
%></tr>
</table>
</center>
</body>
</html>