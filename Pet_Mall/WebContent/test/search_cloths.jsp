<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.ResultSet" %>

<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
%>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>::::::: PET MALL :::::::</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="../carousel.css" rel="stylesheet">
	<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">
	
<style>
	th {
		width : 300px;
	}
	img {
		 width : 100px;
		 height : 100px;
	}
	nav {
		margin : auto;
	}
	#nav-container {
		width: 200px;
	}
	#nav-container ul {
		margin: 0; 
		padding: 0; 
		list-style: none;
	}
	#nav-contatiner ul li {
		padding: 10px 5px; 
		border-bottom: 1px solid #DDD;
	}
	#nav-contatiner ul li a {
		color: #333; 
		text-decoration: none;
	}
	#nav-contatiner ul li a hover{
		color: #F00; 
		text-decoration: underline;
	}		
</style>



	
  </head>
<!-- NAVBAR
================================================== -->
  <body>
  	<div class = "contents">
		<div class="nav-container" style = "float:left; width : 30%">
			<ul class="nav" >
				<li><a href="../test/search_all.jsp"><span class="text">전체 검색</span></a></li>			
				<li><a href="../test/search_food.jsp"><span class="text">사료</span></a></li>
			    <li><a href="../test/search_food_plus.jsp"><span class="text">간식</span></a></li>
			    <li><a href="../test/search_food_plus2.jsp"><span class="text">영양제</span></a></li>
			    <li><a href="../test/search_shampoo.jsp"><span class="text">샴푸</span></a></li>
			    <li><a href="../test/search_cloths.jsp"><span class="text">의류</span></a></li>
			    <li><a href="../test/search_toy.jsp"><span class="text">장난감</span></a></li>
			</ul>
		</div>
		
 <%
	try{
		String url="jdbc:mysql://localhost:3306/pet?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbUser = "jsp_db";
		String dbPass = "jsp_db";
		
		conn = DriverManager.getConnection(url, dbUser, dbPass);
	    String sql="select * from pet.product where product_desc = '의류'";
	    pstmt = conn.prepareStatement(sql);
	    rs = pstmt.executeQuery();
	    while(rs.next()){
	        String p_id = rs.getString("product_id");
	        String p_brand = rs.getString("product_brand");
	        String p_name = rs.getString("product_name");
	        String p_price = rs.getString("product_price");
	        String p_desc = rs.getString("product_desc");
	        String p_url = rs.getString("product_url");
// 	        String p_weight = rs.getString("prouct_weight");
// 	        String p_price_100 = rs.getString("product_price_100");

%>	

		<div class = "container" style = "width:70%; float : right">

	  		<table>
	  			<tr>
	  				<th></th>
	  				<th style = "width : 100px;">브랜드</th>
	  				<th style = "width : 300px; ">이름</th>
	  				<th style = "width : 100px; ">가격</th>
	  				<th style = "width : 100px; "></th>
	  			</tr>


		  		<div class = "search_cloths">
			  		<tr>
			  			<td><img src = <%=p_url %>><br></td>
			  			<td><%=p_brand %><br></td>
			  			<td><%=p_name %><br></td>
			  			<td><%=p_price %></td>
			  			<td><input type = "submit" name = "<%=p_id %>" value = "장바구니" onclick="location.href='../cart/ShoppingCart.jsp'"></td>
			  		</tr>
		  		</div>

			</table>
		</div>
	</div>
</body>
	
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
		
		
</html>


