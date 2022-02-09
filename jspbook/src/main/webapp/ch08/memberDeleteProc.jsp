<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberDeleteProc</title>
</head>
<body>
<%
String id = request.getParameter("id");
MemberDAO mdao = new MemberDAO();
String pw = mdao.getPass(id);
%>
<jsp:useBean id="mbean" class="model.MemberDBVo">
	<jsp:setProperty name = "mbean" property="*" />
</jsp:useBean>
<%
if(mbean.getPw().equals(pw)){
	mdao.deleteMember(id);
	response.sendRedirect("memberList.jsp");
} else{
	%>
	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다.");
		history.go(-1);
	</script>
	<%
}
%>
</body>
</html>