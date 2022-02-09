<%@ tag body-content="scriptless" language="java" pageEncoding="UTF-8"%>
<%@ tag import="jspbook.ch10.product" %>
<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>
<%@ attribute name="width" %>

<jsp:useBean id="product" class="jspbook.ch10.product" />

<h2>Body</h2>

<!-- body-content="scriptless" : 본체의 내용을 그대로 사용 -->
<table border="${border }" bgcolor="${bgcolor }" width="${width }">
<%
for(String item:product.getProductList()){
	out.println("<tr><td>" + item + "</tr></td>");
}
%>
</table>


