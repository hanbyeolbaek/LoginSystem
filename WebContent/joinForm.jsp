<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER SIGN UP</title>
</head>
<body>
	<form name="joinform" action="joinProcess.jsp" method="post">
		<table border=1 style="margin-left:auto; margin-right:auto;">
			<tr>
				<td colspan="2" align="center"><b><font size=5>SIGN UP</font></b></td>
			</tr>
			<tr align="center">
				<td>EMAIL :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr align="center">
				<td>PASSWORD :</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<!-- 추후 javascript로 비밀번호 일치 체크 기능 삽입 -->
			<tr align="center">
				<td>PASSWORD CHECK :</td>
				<td><input type="password" name="pwd_c"></td>
			</tr>
			<tr align="center">
				<td>NAME :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2"  align="center">
					<input type="submit" value="sign up">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>