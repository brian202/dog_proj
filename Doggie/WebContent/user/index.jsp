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
	    String sql="select * from pet.product where product_desc='사료' order by rand() LIMIT 5";
	    pstmt = conn.prepareStatement(sql);
	    rs = pstmt.executeQuery();
%>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="../css/fullpage.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/common.css" />

    <script type="text/javascript" src="../js/fullpage.min.js"></script>
    <script type="text/javascript" src="../js/ScrollTrigger.min.js"></script>

  </head>
  <body>
    <div id="fullpage">
      <!-- section1 -->

      <div class="section sec1">
        <!-- navigation -->
        <nav>
          <h1 id="logo">
            <a href="index.jsp">W</a>
          </h1>
          <div class="header_tools">
            <a href="" class="search">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="#4760af"
              >
                <path
                  d="M23.809 21.646l-6.205-6.205c1.167-1.605 1.857-3.579 1.857-5.711 0-5.365-4.365-9.73-9.731-9.73-5.365 0-9.73 4.365-9.73 9.73 0 5.366 4.365 9.73 9.73 9.73 2.034 0 3.923-.627 5.487-1.698l6.238 6.238 2.354-2.354zm-20.955-11.916c0-3.792 3.085-6.877 6.877-6.877s6.877 3.085 6.877 6.877-3.085 6.877-6.877 6.877c-3.793 0-6.877-3.085-6.877-6.877z"
                />
              </svg>
            </a>
            <a href="category/category_all.jsp" class="shop">shop</a>
            <a href="../index.jsp" class="login">logout</a>
            <a href="" class="cart">cart</a>
          </div>
        </nav>

        <!-- //navigation -->
        <div class="move_figure1">
          <svg
            xmlns:xlink="http://www.w3.org/1999/xlink"
            version="1.1"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 310 350"
          >
            <path
              d="M156.4,339.5c31.8-2.5,59.4-26.8,80.2-48.5c28.3-29.5,40.5-47,56.1-85.1c14-34.3,20.7-75.6,2.3-111  c-18.1-34.8-55.7-58-90.4-72.3c-11.7-4.8-24.1-8.8-36.8-11.5l-0.9-0.9l-0.6,0.6c-27.7-5.8-56.6-6-82.4,3c-38.8,13.6-64,48.8-66.8,90.3c-3,43.9,17.8,88.3,33.7,128.8c5.3,13.5,10.4,27.1,14.9,40.9C77.5,309.9,111,343,156.4,339.5z"
            />
          </svg>
        </div>
        <div class="move_figure2">
          <svg
            xmlns:xlink="http://www.w3.org/1999/xlink"
            version="1.1"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 310 350"
          >
            <path
              d="M156.4,339.5c31.8-2.5,59.4-26.8,80.2-48.5c28.3-29.5,40.5-47,56.1-85.1c14-34.3,20.7-75.6,2.3-111  c-18.1-34.8-55.7-58-90.4-72.3c-11.7-4.8-24.1-8.8-36.8-11.5l-0.9-0.9l-0.6,0.6c-27.7-5.8-56.6-6-82.4,3c-38.8,13.6-64,48.8-66.8,90.3c-3,43.9,17.8,88.3,33.7,128.8c5.3,13.5,10.4,27.1,14.9,40.9C77.5,309.9,111,343,156.4,339.5z"
            />
          </svg>
        </div>

        <div class="bg_figure">
          <img class="dog_img" src="images/dog1.png" alt="ë©ì¸ ê°ìì§ ì´ë¯¸ì§" />
        </div>

        <h1 class="head_title">Why Dog?</h1>
        <!-- <p class="head_text">
          ìì¤ìì êµ¬í  ì ìë ì¬ë£ì ì¢ë¥ë ë ì´ ê°ìë¡ ë¤ìí´ì§ê³  ìì´ ì¬ë°ë¥¸
          ì¬ë£ë¥¼ êµ¬ìíë ê²ì´ íìí©ëë¤.<br /><br />
          ìì´ëê·¸ë ë°ë ¤ê²¬ì ê²¬ì¢ ë° ëì´ ë± ë°ë ¤ê²¬ì íì¬ ìíë¥¼ ê³ ë ¤íê³ 
          ê¸°í¸ì±ê³¼ ì±ë¶ì´ ì¢ì ì¬ë£ë¥¼ ê³ ë¥¼ ì ìëë¡ ëìì£¼ë ë¸ëëìëë¤.
        </p> -->
        
        <a href="" class="scroll"></a>
      </div>

      <!-- //section1 -->
      <!-- section2 -->
      <div class="section sec2 block">
        <div class="category_filter">
          <h2 data-scroll="toggle(.fromBottomIn, .fromBottomOut)">Best Seller</h2>
          <a href="../main_change/index.jsp" class="cat_name pet_food">사료</a>
          <a href="../main_change/index2.jsp" class="cat_name bone">간식</a>
          <a href="../main_change/index3.jsp" class="cat_name pills">영양제</a>
          <a href="../main_change/index4.jsp" class="cat_name pills">의류</a>
          <a href="../main_change/index5.jsp" class="cat_name pills">장난감</a>
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
        
        <div class="category_content">
          <table class="category_area">
            <tr class="cat_list" onClick = "location.href='/main_change/index2.jsp'">
              <td class="cat_img"><img src=<%=p_url%>></td>
              <td class="cat_title"><%=p_name %></td>
              <td class="cat_weight"><%=p_desc %></td>
              <td class="cat_price"><%=p_price %>원</td>
            </tr>
          </table>
      </div>
      
<%
    	}
%>     
      <!-- //section2 -->
    </div>

    <script>
      new fullpage('#fullpage', {
        easingcss3: 'cubic-bezier(0.175, 0.885, 0.320, 1.275)',
        scrollingSpeed: 1000
      });
    </script>
    
    
    <%

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
  </body>
</html>
