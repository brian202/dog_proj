<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>

<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try{
		String url="jdbc:mysql://localhost:3306/pet?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbUser = "jsp_db";
		String dbPass = "jsp_db";
		
		conn = DriverManager.getConnection(url, dbUser, dbPass);
	    String sql="select * from pet.product where product_desc='의류'";
	    pstmt = conn.prepareStatement(sql);
	    rs = pstmt.executeQuery();
%>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="css/common.css" rel="stylesheet" />
        <link href="css/category.css" rel="stylesheet" />
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="../js/fullpage.min.js"></script>

        <title>Why Dog</title>
        
        
<script>

jQuery('selector-to-form').submit();

</script>
        
    </head>

    <body>
        <!-- navigation -->
        <nav>
            <h1 id="logo">
                <a href="/">W</a>
            </h1>
            <div class="header_tools">
                <a href="" class="shop"> shop </a>

                <a href="" class="login">login</a>
                <div class="cart">
                    <a href="">cart</a>
                </div>
            </div>
        </nav>
        <!-- //navigation -->
        <!-- category -->
        <div class="category" style = "width : None; display : block">
<!--             <div class="category_filter"> -->
<!--                 <a href="#" class="cat_name active-color">전체 </a> -->
<!--                 <a href="#" class="cat_name">사료 </a> -->
<!--                 <a href="#" class="cat_name">간식 </a> -->
<!--                 <a href="#" class="cat_name">영양제 </a> -->
<!--                 <a href="#" class="cat_name">샴푸 </a> -->
<!--             </div> -->
            <div class="category_filter" style="float: left; width: 15%">
				<ul class="nav">
					<li><a href="../category/category_all.jsp"><span class="cat_name">전체검색</span></a></li>
					<li><a href="../category/category_food.jsp"><span class="cat_name">사료</span></a></li>
					<li><a href="../category/category_snack.jsp"><span class="cat_name">간식</span></a></li>
					<li><a href="../category/category_food_plus.jsp"><span class="cat_name">영양제</span></a></li>
					<li><a href="../category/category_shampoo.jsp"><span class="cat_name">샴푸</span></a></li>
					<li><a href="../category/category_cloths.jsp"><span class="cat_name active-color">의류</span></a></li>
					<li><a href="../category/category_toy.jsp"><span class="cat_name">장난감</span></a></li>
				</ul>
			</div>


<%
	    while(rs.next()){
	        String p_id = rs.getString("product_id");
	        String p_brand = rs.getString("product_brand");
	        String p_name = rs.getString("product_name");
	        String p_price = rs.getString("product_price");
	        String p_desc = rs.getString("product_desc");
	        String p_url = rs.getString("product_url");

%>     


<form id = "sub_form" action = "../detail/detailpage.jsp" method = "post">
            <div class="category_content" style = "float : left; width : 20%">
                <table class="category_area">
                    <tr class="cat_list">
                        <td class="cat_img" name = "p_url">
                        	<input type = "IMAGE" src=<%=p_url%> name = "p_url" value = <%=p_url %> style = "width : 270px; height : 250px; object-fit : cover;">
                        	<input type = "hidden" name = "p_url" value = <%=p_url %>>
                        </td>
                        <td class="cat_title" name = "p_name" value = <%=p_name %>><%= p_name %>
                        	<input type = "hidden" name = "p_name" value = "<%=p_name%>">
                        </td>
                        	<input type = "hidden" name = "p_brand" value = "<%=p_brand%>">
                        <td class="cat_weight" name = "p_desc" value = <%=p_desc %>><%=p_desc%>
                        	<input type = "hidden" name = "p_desc" value = "<%=p_desc%>">
                        </td>      	
                        <td class="cat_price" name = "p_price" value = <%=p_price %>><%=p_price %>원
                        	<input type = "hidden" name = "p_price" value = "<%=p_price%>">
                        </td>
                    </tr>
                </table>
                
                <ul class="pagination"></ul>
            </div>
        </div>
        <!-- //category -->
</form>
       
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
    
        
        <!-- footer -->
<!--         <footer> -->
<!--             <p>copyright 2020 에이콘 아카데미 2조</p> -->
<!--         </footer> -->
        <!-- /footer -->
    </body>
    
</html>

