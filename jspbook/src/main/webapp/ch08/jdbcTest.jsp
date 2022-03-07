<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<%
  //연결관련 변수 선언
  Connection conn=null;
  PreparedStatement pstmt=null;
  
  String jdbc_url="jdbc:oracle:thin:@192.168.55.182:1521:xe";
  String jdbc_driver="oracle.jdbc.driver.OracleDriver";
  
  try{
	  Class.forName(jdbc_driver); //DB드라이버
	  conn=DriverManager.getConnection(jdbc_url, "system", "1234"); //DB연동 정보
	  
	  //Connection 클래스의 인스턴스 SQL -> 인코딩
	  String sql="insert into jdbc_test values(?,?)";
	  pstmt=conn.prepareStatement(sql);
	  pstmt.setString(1,request.getParameter("username"));
	  pstmt.setString(2,request.getParameter("email"));
	  
	  if(request.getParameter("username") != null){
		  pstmt.executeUpdate();
	  }
  
  }catch(Exception e){
	  e.printStackTrace();
  }

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB테스트</title>
</head>
<body>
<div align="center">
<H2>이벤트 등록</H2>
<HR>

<form name=form1 method=post action=jdbcTest.jsp>
						등록이름 : <input type=text name=username><p/>
&nbsp;&nbsp;&nbsp;&nbsp; email : <input type=text name=email size=20><p/>
&nbsp;&nbsp;&nbsp;&nbsp; <input type=submit value="간단회원가입">
</form>
<HR>
</div>
# 등록 목록<p>
<%
	try{
		String sql="select username, email from jdbc_test";
		pstmt=conn.prepareStatement(sql);
		
		ResultSet rs=pstmt.executeQuery();
		int i=1;
		
		//모든 데이터 출력
		while(rs.next()){
			out.println(i+" : "+rs.getString(1)+", "+rs.getString("email")+"<BR>");
			i++;
		}
		//commit 처리
		rs.close();
		pstmt.close();
		conn.close();
		
	}catch(Exception e){
		  e.printStackTrace();
	}
%>
</body>
</html>