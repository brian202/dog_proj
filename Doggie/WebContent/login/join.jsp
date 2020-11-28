<%@ page contentType = "text/html; charset=utf-8" %>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String NameField = request.getParameter("NameField");
	String IDField= request.getParameter("IDField");
	String EmailField = request.getParameter("EmailField");
	String PwField = request.getParameter("PwField");
	String DogValue = request.getParameter("DogValue");
	String DogAge = request.getParameter("DogAge");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	try {
		String url="jdbc:mysql://localhost:3306/pet?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbUser = "jsp_db";
		String dbPass = "jsp_db";
		
		conn = DriverManager.getConnection(url, dbUser, dbPass);
		pstmt = conn.prepareStatement(
			"insert into pet.member values (?, ?, ?, ?, ?, ?)");
		pstmt.setString(1, NameField);
		pstmt.setString(2, IDField);
		pstmt.setString(3, EmailField);
		pstmt.setString(4, PwField);
		pstmt.setString(5, DogValue);
		pstmt.setString(6, DogAge);
		
		pstmt.executeUpdate();
		
		response.sendRedirect("../index.jsp");
	} finally {
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>
