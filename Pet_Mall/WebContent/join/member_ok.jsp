<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String NameField = request.getParameter("NameField");
	String PwField = request.getParameter("PwField");
	
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
		pstmt.setString(1, NameField);
		pstmt.setString(2, PwField);
		
	} finally {
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
	
	
%>

	<% if(NameField.equals("admin")){
		response.sendRedirect("../admin/index.jsp");
	} else {
		
	%>
	<%
	}
	 %>
		
<!-- 	String id = request.getParameter("LoginID"); -->
<!-- 	String pass = request.getParameter("LoginPW"); -->
	
<!-- 	if(NameField.equals) -->
	
<!-- 	if(id.equals("admin") && pass.equals("1234")){ -->
<!-- 		session.setAttribute("LoginID",id); -->
<!-- 		response.sendRedirect("../admin/index.jsp"); -->
<!-- 	}else if(id.equals("admin")){ -->
<!-- 		out.println("<script>alert('비밀번호가 틀렸습니다.'); history.back();</script>"); -->
<!-- 	}else if(pass.equals("1234")){ -->
<!-- 		out.println("<script>alert('아이디가 틀렸습니다.'); history.back();</script>"); -->
<!-- 	}else{ -->
<!-- 		out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.back();</script>"); -->
<!-- 	} -->