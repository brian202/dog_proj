<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	session.invalidate();
 	out.println("<script>alert('�α׾ƿ��Ǿ����ϴ�'); history.back();</script>");
 	response.sendRedirect("../insert/index.jsp");
 %>