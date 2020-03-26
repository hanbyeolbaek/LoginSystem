<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="java.sql.*"%>

<%
	String info_email = request.getParameter("email");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		String jdbc_driver = "oracle.jdbc.OracleDriver";
		String db_url  = "jdbc:oracle:thin:@localhost:1521:XE";
		
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(db_url, "scott", "tiger");
		
		pstmt = conn.prepareStatement("select * from member where email=?");
		pstmt.setString(1, info_email);
		rs = pstmt.executeQuery();
		rs.next();
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=1 width=300 style="margin-left:auto; margin-right:auto;">
		<tr align=center>
			<td>EMAIL:</td>
			<td><%=rs.getString("email")%></td>
		</tr>
		<tr align=center>
			<td>NAME:</td>
			<td><%=rs.getString("name")%></td>
		</tr>
		<tr align=center>
			<td>DATE:</td>
			<td><%=rs.getString("time")%></td>
		</tr>
		<tr align=center>
			<td colspan=2>
				<input type="button" onclick="location.href='member_list.jsp'" value="LIST">
			</td>
	</table>
</body>
</html>