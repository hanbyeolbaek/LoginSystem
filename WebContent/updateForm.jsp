<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="updateform" method="post" action="updateProcess.jsp">
		<table border=1 style="margin-left:auto; margin-right:auto;">
			<tr>
				<td>PASSWORD :</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>NAME :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<input type="submit" value="UPDATE">
		</table>
	</form>
</body>
</html>