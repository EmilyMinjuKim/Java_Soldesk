<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Test</title>
</head>
<body>

<h3>스크립트릿 태그</h3>
<%
int i = 3;
out.println("i = " + 3);
request.setAttribute("a", 3);
/* out.println("a = " + a); */
request.setAttribute("b", 5);
%>
<hr />


<h3>스크립트릿 태그 표현식</h3>
i = <%=i %><br>
<%-- i = <%=a %> --%>
i = <%=i>7 %><br>
sum = <%=3+"4" %><br> 	<!-- 문자 데이터로 연산시 자동으로 문자 타입으로 변환 -->
<hr />


<h3>EL 표현식</h3>
1. i = ${i }<br>	<!-- 페이지 내 선언된 변수를 바로 받을 수는 없음. -->
2. a = ${a }<br>	<!-- 단, 다른 페이지 변수 정보를 넘겨받을 때 유용함. -->
3. b>7 = ${b>7 }<br>
4. b+5 = ${b+5 }<br>
5. sum = ${b+"5" }<br> 	<!-- 문자도 산술 연산 가능 -->

</body>
</html>