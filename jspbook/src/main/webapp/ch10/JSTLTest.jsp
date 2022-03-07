<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Test</title>
</head>
<body>
<!-- if문 사용법(EL포함) 구현 -->
<c:if test="${4>3 }">
안녕하세요 
</c:if>
<hr />

<!-- 변수 선언  -->
<c:set var="i" value="4"> <%-- <%request.setAttribute("i", 4); %>와 같음 --%>
</c:set>

<c:if test="${i>3}">
안녕하세요<br>
</c:if>
<hr />

<!-- 반복문 for -->
<c:forEach begin="1" end="10">
점심시간입니다.<br>
</c:forEach>
<hr />

<!-- 1에서 10까지의 합  -->
<c:forEach var="i" begin="1" end="10">
<c:set var="sum" value="${sum = sum+i }"></c:set>
</c:forEach>

sum : ${sum }
<hr />

<!-- 1에서 10까지의 합 step 속성  -->
<c:forEach var="j" begin="1" end="10" step="2">
<c:set var="sum" value="${sum = sum+i }"></c:set>
</c:forEach>

sum : ${sum }
<hr />

</body>
</html>