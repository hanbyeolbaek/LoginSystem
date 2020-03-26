<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="java.sql.*" %>

<%
	String name = "";
	if (session.getAttribute("name") != null){
		name = (String)session.getAttribute("name");
	}else{
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER MAIN</title>
</head>
<body>
	<h3><%=name %>님, 어서오시게!!</h3>
	
<%
	if (name.equals("관리자")) {
%>
		<input type="button" onclick="location.href('member_list.jsp')" value="member list">
<%
	}else{
		
	}
%>
</body>
</html>