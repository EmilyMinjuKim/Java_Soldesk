<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen" />
<html>
<body>
 
 <center>
 <h2> 회원 가입 </h2>
 <form action="proc.do" method="post">
 <table width="600" border="1">
  <tr height="40">
   <th width="200" align="center"> 아이디 </th>
   <td  align="left"> <input type="text" name="id" placeholder="아이디를 입력하세요"> </td>
  </tr> 
  <tr height="40">
   <th width="200" align="center"> 패스워드 </th>
   <td  align="left"> <input type="password" name="pass1" placeholder="숫자와 문자를 혼합"> </td>
  </tr> 
  <tr height="40">
   <th width="200" align="center"> 패스워드확인 </th>
   <td  align="left"> <input type="password" name="pass2"> </td>
  </tr> 
  <tr height="40">
   <th width="200" align="center"> 이메일 </th>
  <td  align="left"> <input type="email" name="email" outline:none> </td>
  </tr> 
     <tr height="40">
   <th width="200" align="center"> 성별 </th>
   <td  align="left">    
   <input type="radio" name="gender" value="남">남
   <input type="radio" name="gender" value="여">여
   </td>
   </td>
  </tr> 
  <tr height="40">
   <th width="200" align="center"> 주소 </th>
   <td  align="left"> <input type="text" name="address"> </td>
  </tr> 
  <tr height="40">
   <th width="200" align="center"> 전화번호 </th>
   <td  align="left"> <input type="phone" name="phone"> </td>
  </tr> 
  <tr height="40">
   <th width="200" align="center"> 당신의 관심분야 </th>
	   <td align="left">
	   <input type="checkbox" name="hobby" value="여행">여행 
	   <input type="checkbox" name="hobby" value="등산">등산 
	   <input type="checkbox" name="hobby" value="음악">음악 
	   <input type="checkbox" name="hobby" value="독서">독서 
  		</td>
  </tr>
  <tr height="40">
   <th width="200" align="center"> 당신의 직업은 </th>
   <td width="400" align="left">
	   <select name="job">
	   <option value="교사">교사 </option>
	   <option value="유투버">유투버 </option>
	   <option value="의사">의사</option>
	   <option value="기술사">기술사 </option>
   </select></td>
  </tr>
   <tr height="40">
	   <th width="200" align="center"> 당신의 연령은 </th>
	   <td  align="left">
	   <input type="radio" name="age" value="10">10대 
	   <input type="radio" name="age" value="20">20대
	   <input type="radio" name="age" value="30">30대
	   <input type="radio" name="age" value="40">40대
  </td>
  </tr>
  <tr height="40">
   <th width="200" align="center"> 하고싶은말 </th>
   <td width="400" align="left"> 
   <textarea rows="5" cols="40" name="info"></textarea>
   </td>
  </tr> 
   <tr height="40">
   <td width="600" align="center" colspan="2">
    <input type="submit" value="회원가입">
    <input type="reset" value="취소">
   </td>   
  </tr>
 </table>
 </form>

</body>
</html>