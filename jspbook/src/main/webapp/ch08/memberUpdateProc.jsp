<%@page import="model.MemberDAO"%>
<%@page import="model.MemberDBVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Update Proc</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mbean" class="model.MemberDBVo">
	<jsp:setProperty name="mbean" property="*" />
</jsp:useBean>
<%
MemberDAO mdao = new MemberDAO();
String id = request.getParameter("id");
String pw = mdao.getPass(id);
if(mbean.getPw().equals(pw)){
	mdao.updateMember(mbean);
	response.sendRedirect("memberList.jsp");
} else{
	%>
	<script type="text/javascript">
		alert("패스워드가 일치하지 않습니다.");
		history.go(-1);
	</script>
	<%
}
%>
</body>
</html>