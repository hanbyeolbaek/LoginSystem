<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER LOGIN</title>
</head>
<body>
	<form name="loginform" action="loginProcess.jsp" method="post">
		<table border=1 style="margin-left:auto; margin-right:auto;">
			<tr>
				<!-- colspan으로 셀 병합 -->
				<td colspan="2" align="center"><b><font size=5>LOGIN</font></b></td>
			</tr>
			<tr>
				<td>EMAIL :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>PASSWORD :</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align=center>
					<input type="submit" value="login">
					<input type="button" onclick="location.href='joinForm.jsp'" value="sign up">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>


