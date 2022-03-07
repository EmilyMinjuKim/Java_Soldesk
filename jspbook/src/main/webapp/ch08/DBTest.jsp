<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 오라클 데이터베이스 연결 url  -->
		<%
		String url = "jdbc:oracle:thin:@192.168.55.182:1521:xe";
		String user = "system";
		String pass = "1234";
		
		try {
			//데이터베이스마다 다름
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			System.out.println("데이터베이스 연결 준비......");
			//오라클 접속 정보
			Connection con=DriverManager.getConnection(url, user, pass);
			if(con!=null)
				System.out.println("데이터베이스 연결 성공.....");
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		%>
		
		오라클 연동 성공!!
</body>
</html>