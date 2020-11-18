<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.io.OutputStream" %>
<%@ page import = "java.io.InputStream" %>
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
	    OutputStream output = response.getOutputStream();


	    while(rs.next()){
	        String p_id = rs.getString("product_id");
	        String p_brand = rs.getString("product_brand");
	        String p_name = rs.getString("product_name");
	        String p_price = rs.getString("product_price");
	        String p_desc = rs.getString("product_desc");
	        InputStream input = rs.getBinaryStream("product_url");

// 	        String p_weight = rs.getString("prouct_weight");
// 	        String p_price_100 = rs.getString("product_price_100");

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
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper" style=" margin-top:0px; margin-bottom:0px; position : static;">
      <div class="container" style="width:100%; padding-left : 0px; padding-right : 0px;">

        <nav class="navbar navbar-inverse navbar-static-top" style = "margin-bottom : 0px;">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.jsp">PET MALL</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav" >
              	<li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">카테고리 <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">영양제/간식 추천</a></li>
                    <li><a href="#">의류 추천</a></li>
                    <li><a href="#">장난감 추천</a></li>
                    <li><a href="#">하우스/울타리 추천</a></li>       
<!--                     <li class="divider">#</li> -->
<!--                     <li class="dropdown-header">#</li> -->
<!--                     <li><a href="#">#</a></li> -->
<!--                     <li><a href="#">#</a></li> -->
                  </ul>
                </li>
                <li class="active"><a href="../user/index.jsp">Home</a></li>
                <li><a href="#about">영양제/간식 추천</a></li>
                <li><a href="#contact">의류 추천</a></li>
                <li><a href="#contact">장난감 추천</a></li>
                <li><a href="#contact">하우스/울타리 추천</a></li>
                
               <form class="form-inline mt-2 mt-md-0">
			    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" size = "100px">
			    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			  </form>
                
              </ul>
              <ul>
              
			  </ul>

            </div>
          </div>
        </nav>

      </div>
    </div>

	


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
	
    <div class="container marketing" style="width : 1200px;">
	
	 <div class = "search-filter" style = "float : left; width : 200px;">
	 	<div class = "search-filter-options" style = "position : relative; width : 200px;">
	 		
	 	</div>
	 </div>
      <!-- Three columns of text below the carousel -->
      <div class="row">
 		<div class="title" align = "right">
 		  <h2 align = "left">이 상품 어때요?</h2>
 		</div>
 		
	 		<table>
		 		<tr>
		 			<td><%=input %></td>
		 			<td><%=p_name %></td>
		 			<td><%=p_price %>원</td>
		 			<td><%=p_desc %></td>
		 		</tr>
		 		<tr>
		 			<td><%=input %></td>
		 			<td><%=p_name %></td>
		 			<td><%=p_price %>원</td>
		 			<td><%=p_desc %></td>
		 		</tr>
	 		</table>


        <div class="col-lg-4" style="width : 15%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3><%=p_name %></h3>
          <p><%=p_price %>원</p>
          <p><%=p_desc %></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 15%;">
          <img class="img-circle" src="https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/product/image/vendoritem/2019/03/14/3000281274/4057ec60-4cde-47d9-8cfc-3a6f3f2d3e05.jpg" alt="Generic placeholder image">
          <h3><%=p_name %></h3>
          <p><%=p_price %>원</p>
          <p><%=p_desc %></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 15%;">
          <img class="img-circle" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/85907803434094-ef9a75a5-997b-4852-8916-2357c33b87c8.jpg" alt="Generic placeholder image">
          <h3><%=p_name %></h3>
          <p><%=p_price %>원</p>
          <p><%=p_desc %></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 15%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3><%=p_name %></h3>
          <p><%=p_price %>원</p>
          <p><%=p_desc %></p>
        </div>
        <div class="col-lg-4" style="width : 15%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3><%=p_name %></h3>
          <p><%=p_price %>원</p>
          <p><%=p_desc %></p>
        </div>
      </div>
      <!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
		<tr>
			<td><%=p_id %></td>
		    <td><%=p_brand %></td>
		    <td><%=p_name %></td>
		    <td><%=p_price %></td>
		    <td><%=p_desc %></td>
		</tr>
		

      <hr class="featurette-divider">

<!--       <div class="row featurette"> -->
<!--         <div class="title" align = "right"> -->
<!--  		  <h2 align = "left">이 상품 어때요?</h2> -->
<!-- 		  <a class="btn btn-default" href="#" role="button">더보기 &raquo;</a> -->
<!--  		</div> -->
<!--         <div class="col-lg-4" style="width : 20%;"> -->
<!--           <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image"> -->
<!--           <h3>로얄캐닌 독 미니 인도어</h3> -->
<!--           <p>이에 대한 설명 혹은 가격(?)</p> -->
<!--         </div>/.col-lg-4 -->
<!--         <div class="col-lg-4" style="width : 20%;"> -->
<!--           <img class="img-circle" src="https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/product/image/vendoritem/2019/03/14/3000281274/4057ec60-4cde-47d9-8cfc-3a6f3f2d3e05.jpg" alt="Generic placeholder image"> -->
<!--           <h3>나우 그레인프리 스몰브리드</h3> -->
<!--           <p>이에 대한 설명 혹은 가격2(?)</p> -->
<!--         </div>/.col-lg-4 -->
<!--         <div class="col-lg-4" style="width : 20%;"> -->
<!--           <img class="img-circle" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/85907803434094-ef9a75a5-997b-4852-8916-2357c33b87c8.jpg" alt="Generic placeholder image"> -->
<!--           <h3>아카나  스몰브리드</h3> -->
<!--           <p>이에 대한 설명 혹은 가격3(?)</p> -->
<!--         </div>/.col-lg-4 -->
<!--         <div class="col-lg-4" style="width : 20%;"> -->
<!--           <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image"> -->
<!--           <h3>로얄캐닌 독 미니 인도어 2 </h3> -->
<!--           <p>이에 대한 설명 혹은 가격(?)</p> -->
<!--         </div> -->
<!--         <div class="col-lg-4" style="width : 20%;"> -->
<!--           <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image"> -->
<!--           <h3>로얄캐닌 독 미니 인도어 3 </h3> -->
<!--           <p>이에 대한 설명 혹은 가격(?)</p> -->
<!--         </div> -->
<!--       </div> -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="main_4">
      	  <h2>구매후기</h2>
      	</div>
		<a href = "insert/insertForm.jsp">입력</a>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2020 에이콘 아카데미 2조, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
	
    </div><!-- /.container -->

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


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
    
    
  </body>
</html>


