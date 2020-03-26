<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGN UP</title>
</head>
<body>
	<form name="joinform" action="joinProcess.jsp" method="post">
		<table border=1 style="margin-left:auto; margin-right:auto;">
			<tr>
				<td colspan="2" align="center"><b><font size=5>SIGN UP</font></b></td>
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
				<td>NAME :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2" align=center><a
					href="javascript:joinform.submit()">회원가입</a> <a
					href="javascript:joinform.reset()">다시작성</a></td>
			</tr>
		</table>
	</form>
</body>
</html>