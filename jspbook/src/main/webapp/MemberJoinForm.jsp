<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Join</title>
</head>
<body>
<center>
	<h2>회원가입</h2>
	<form action="proc.do" method="post">
		<table width="400" border="1" cellspacing="0" cellpadding="5">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="30" placeholder="아이디를 입력하세요" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="pass1" size="30" placeholder="문자와 숫자를 혼합" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="text" name="pass2" size="30" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="30" outline:none /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="남" />남
					<input type="radio" name="gender" value="여" />여
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" size="30" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" size="30" /></td>
			</tr>
			<tr>
				<td>관심분야</td>
				<td>
					<input type="checkbox" name="hobby" value="여행" />여행
					<input type="checkbox" name="hobby" value="등산" />등산
					<input type="checkbox" name="hobby" value="음악" />음악
					<input type="checkbox" name="hobby" value="독서" />독서
				</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option selected>교사</option>
						<option>개발자</option>
						<option>변호사</option>
						<option>의사</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>연령</td>
				<td>
					<input type="radio" name="age" value="10대" />10대
					<input type="radio" name="age" value="20대" />20대
					<input type="radio" name="age" value="30대" />30대
					<input type="radio" name="age" value="40대" />40대
				</td>
			</tr>
			<tr>
				<td>하고싶은 말</td>
				<td>
					<textarea name="info" cols="30" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="회원가입" />
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>