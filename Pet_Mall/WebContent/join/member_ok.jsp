<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("LoginID");
	String pw = request.getParameter("LoginPW");
	
	if(id.equals("admin") && pw.equals("1234")){
		response.sendRedirect("../admin/index.html");
	}else if(id.equals("user") && pw.equals("1234")){
		response.sendRedirect("../user/index.jsp");	
	}else{
		out.println("<script>alert('아이디와 비밀번호를 정확히 입력해주세요.'); history.back();</script>");
	}
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	try {
		String url="jdbc:mysql://localhost:3306/pet?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbUser = "jsp_db";
		String dbPass = "jsp_db";
		
		conn = DriverManager.getConnection(url, dbUser, dbPass);
		pstmt = conn.prepareStatement(
			"select from pet.member where (?, ?)");
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
	} finally {
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
	
	
%>
