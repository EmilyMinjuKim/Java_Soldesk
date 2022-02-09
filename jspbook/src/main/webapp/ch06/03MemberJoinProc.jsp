<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join Result</title>
</head>
<body>
<center>
	<h2>회원가입 결과</h2>
	<% 
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pw2 = request.getParameter("pw2");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	String job = request.getParameter("job");
	String interests[] = request.getParameterValues("interest");
	String age = request.getParameter("age");
	String info = request.getParameter("info");
	
	if(!pw.equals(pw2)){	
	%>
		<script type="text/javascript">
			alert("비밀번호가 일치하지 않습니다.");
			history.go(-1);
		</script>
	<%} %>
	
	<table width="400" border="1" cellspacing="0" cellpadding="5">
			<tr>
				<td>아이디</td>
				<td><%=id %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><%=pw %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%=email %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%=gender %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%=address %></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%=tel %></td>
			</tr>
			<tr>
				<td>관심분야</td>
				<td><% 
					for(String interest:interests){
						out.println(interest+" ");
					}
				%></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%=job %></td>
			</tr>
			<tr>
				<td>연령</td>
				<td><%=age %></td>
			</tr>
			<tr>
				<td>하고싶은 말</td>
				<td><%=info %></td>
			</tr>
		</table>
</center>
</body>
</html>