<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단03</title>
</head>
<body>
<%
for(int i=1; i<10; i++){
	int m = 9;
	int n = 2;
	for(int j=1; j<9; j++){
		if(j%2!=0){
			%><%= m + "*" + i + "=" + m*i%>&nbsp;&nbsp;<%
			m--;
		} else{
			%><%= n + "*" + i + "=" + n*i%>&nbsp;&nbsp;<%
			n++;
		}
	}%><br><%
}
%>

	<center>
		<table width="800" height="600" border="1">
			<tr>
				<td colspan="8" style="background-color: green; text-align: center;">GuGuDan</td>
			</tr>
			<%
			for (int j = 1; j < 10; j++) {
				int i = 7;
				int m = 9;
			%><tr>
				<%
				for (int s = 1; s < 9; s++) {
				%><td style="background-color: yellow"><%=m + " * " + j + " = " + m*j%></td>
				<%
				if (s % 2 != 0) { //홀수
					m = m - i; //m=9, 8, 7
					i--; //i=7, 5, 3, 1
				} else {
					m = m + i; //m=2, 3, 4
					i--;//i=6, 4, 2
				}
				}
				}
				%>
			</tr>
		</table>
	</center>
</body>
</html>