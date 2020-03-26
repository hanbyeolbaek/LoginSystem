<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER LOGIN PROCESS</title>
</head>
<body>
<%
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	Timestamp time = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try{
		String jdbc_driver = "oracle.jdbc.OracleDriver";
		String db_url  = "jdbc:oracle:thin:@localhost:1521:XE";
		
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(db_url, "scott", "tiger");
		
		String sql = "insert into member values ((select nvl(max(num),0)+1 from member), ?, ?, ?, CURRENT_TIMESTAMP)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		
		int result = pstmt.executeUpdate();
		
		if (result != 0) {
			response.sendRedirect("loginForm.jsp");
		} else {
			response.sendRedirect("joinForm.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null)
			try{rs.close();}catch(SQLException sqle){}
		if(pstmt!=null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn!=null)
			try{conn.close();}catch(SQLException sqle){}
	}
%>
</body>
</html>