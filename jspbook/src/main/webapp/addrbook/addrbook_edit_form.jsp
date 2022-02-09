<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.addrbook.*" errorPage="addrbook_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="addrbook.css" />
<script type="text/javascript">
	function delCheck() {
		result = confirm("정말로 삭제하시겠습니까?");
		if(result==true){
			document.form1.action.value = "delete";
			document.form1.submit();
		} else{
			return;
		}
	};
</script>
<title>addrbook_edit_form</title>
</head>
<jsp:useBean id="ab" class="jspbook.addrbook.AddrBook" scope="request" />
<body>
<div align="center">
<h2>주소록:수정화면</h2>
<hr />
[<a href="addrbook_control.jsp?action=list">주소록 목록으로</a>]<p/>

<form name="form1" action="addrbook_control.jsp" method="post">
	<input type="hidden" name="action" value="update" />
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><%=ab.getAb_id() %></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="ad_name" value="<%=ab.getAb_name() %>" /></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="ad_email" value="<%=ab.getAb_email() %>" /></td>
		</tr>
		<tr>
			<th>회사</th>
			<td><input type="text" name="ad_comdept" value="<%=ab.getAb_comdept() %>" /></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><input type="text" name="ad_birth" value="<%=ab.getAb_birth() %>" /></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="ad_tel" value="<%=ab.getAb_tel() %>" /></td>
		</tr>
		<tr>
			<th>메모</th>
			<td><input type="text" name="ad_memo" value="<%=ab.getAb_memo() %>" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="저장" />
				<input type="reset" value="취소" />
				<input type="button" value="삭제" onclick="delCheck()" />
			</td>
		</tr>
	</table>
</form>

</div>
</body>
</html>