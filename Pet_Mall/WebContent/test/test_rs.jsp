<%@ page contentType = "text/html; charset=utf-8" %>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.ResultSet" %>
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	try{
		String url="jdbc:mysql://localhost:3306/pet?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbUser = "jsp_db";
		String dbPass = "jsp_db";
		
		conn = DriverManager.getConnection(url, dbUser, dbPass);
	    String sql="select * from pet.product";
	    pstmt = conn.prepareStatement(sql);
	    rs = pstmt.executeQuery();
	    while(rs.next()){
	        String p_id = rs.getString("product_id");
	        String p_brand = rs.getString("product_brand");
	        String p_name = rs.getString("product_name");
	        String p_price = rs.getString("product_price");
	        String p_desc = rs.getString("product_desc");
	        

%>

<tr>
        <td><%=p_id %></td>
        <td><%=p_brand %></td>
        <td><%=p_name %></td>
        <td><%=p_price %></td>
        <td><%=p_desc %></td>

</tr>


<%
            }
        }catch(SQLException se){
            System.out.println(se.getMessage());
        }finally{
            try{
                if(rs!=null)  rs.close();
                if(pstmt!=null)  pstmt.close();
                if(conn!=null)  conn.close();
            }catch(SQLException se){
                System.out.println(se.getMessage());
            }
        }
    %>

