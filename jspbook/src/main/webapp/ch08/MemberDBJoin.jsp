<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDBJoin</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
//배열 처리하여 Vo클래스의 내용을 다시 구성 
String[] interest = request.getParameterValues("interest");
//하나의 스트링 타입으로 저장
String textinterest = "";

for(int i = 0; i < interest.length; i++){
	textinterest += interest[i] + " ";
}
%>

<jsp:useBean id="mbean" class="model.MemberDBVo">
	<jsp:setProperty name="mbean" property="*" /> <!-- 매핑 역할 -->
</jsp:useBean>

<%
mbean.setInterest(textinterest);

/* String url="jdbc:oracle:thin:@192.168.55.182:1521:xe";
String user="system";
String password="1234";

//DAO 활용시 에러방지를 위해 try문으로 구현
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("드라이버 로딩 성공");
} catch (Exception e) {
	e.printStackTrace();
}

try{
	Connection con = DriverManager.getConnection(url, user, password);	//DB 접속 정보
	if(con!=null)
		System.out.println("데이터베이스 연결 성공.....");
	
	//쿼리를 String 처리
	String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
	//쿼리 SQL문으로 변경 
	PreparedStatement pstmt = con.prepareStatement(sql);
	//?에 매핑
	pstmt.setString(1, mbean.getId());
	pstmt.setString(2, mbean.getPw());
	pstmt.setString(3, mbean.getPw2());
	pstmt.setString(4, mbean.getEmail());
	pstmt.setString(5, mbean.getGender());
	pstmt.setString(6, mbean.getAddress());
	pstmt.setString(7, mbean.getTel());
	pstmt.setString(8, mbean.getInterest());
	pstmt.setString(9, mbean.getJob());
	pstmt.setString(10, mbean.getAge());
	pstmt.setString(11, mbean.getInfo());
	
	pstmt.executeUpdate();
	con.close();	//자원 반납
	
}catch(Exception e){
	e.printStackTrace();
}  */

MemberDAO mdao = new MemberDAO();
mdao.insertMember(mbean);
//페이지 이동
response.sendRedirect("memberList.jsp");

%>

회원가입 입력 완료


</body>
</html>