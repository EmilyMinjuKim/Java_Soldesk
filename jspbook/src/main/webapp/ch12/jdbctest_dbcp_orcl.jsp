<%@page import="java.sql.ResultSet"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<%
Connection con = null;
PreparedStatement pstmt = null;

try{
	//new InitialContext()로 Context 객체 생성
	Context initContext = new InitialContext();
	
	//JNDI(Java Naming Directory Interface)==java:comp/env로 Context가 접근.
	Context envContext = (Context)initContext.lookup("java:comp/env");
	
	//web.xml에 등록된 JNDI(==jdbc/xe)로 소스 설정
	DataSource ds = (DataSource)envContext.lookup("jdbc/xe");
	
	//연결 완료
	con = ds.getConnection();
	
	if(request.getParameter("username") != null){
		String sql = "insert into jdbc_test values(?,?)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}
	
} catch(Exception e){
	e.printStackTrace();
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBCP</title>
</head>
<body>
<center>
<h2>jdbctest_dbcp_orcl</h2>
<form action="jdbctest_dbcp_orcl.jsp" method="post">
	이름 : <input type="text" name="username" />
	이메일 : <input type="text" name="email" />&nbsp;
	<input type="submit" value="전송" />
</form>
<hr />
</center>

## 등록회원 <p/>
<%
try{
	
	String sql = "select username, email from jdbc_test";
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int i = 1;
	while(rs.next()){
		out.println(i + " : " + rs.getString(1) + ", " + rs.getString(2) + "<br>");
		i++;
	}
	
	rs.close();
	pstmt.close();
	con.close();
	
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>