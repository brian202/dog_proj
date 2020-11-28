<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<%
	request.setCharacterEncoding("utf-8");
	
	String p_url = request.getParameter("p_url");
	String p_name = request.getParameter("p_name");
	String p_price = request.getParameter("p_price");
	String p_brand = request.getParameter("p_brand");
	String p_desc = request.getParameter("p_desc");
%>

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../css/common.css" rel="stylesheet" />
    <link href="../css/detailpage.css" rel="stylesheet" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="/js/site.js"></script>

    <title>Why Dog</title>
  </head>
  <body>
    <!-- navigation -->
    <nav>
      <h1 id="logo">
        <a href="/">W</a>
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
        <a href="" class="shop">shop</a>

        <a href="" class="login">login</a>
        <a href="" class="cart">cart</a>
      </div>
    </nav>
    <!-- //navigation -->

    <!-- main -->
    <main class="main_wrap detailpage page-start">
      <div class="product">
        <div class="product_visual">
          <!-- <div class="product_wrap"> -->
          <div class="img_wrap">
            <img src=<%=p_url %> />
          </div>
          <!-- </div> -->
        </div>
        <div class="product_order">
          <!-- <div class="product_container"> -->
          <div class="star_rating">
            <span class="stars">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="#f6bf3a"
              >
                <path
                  d="M12 .587l3.668 7.568 8.332 1.151-6.064 5.828 1.48 8.279-7.416-3.967-7.417 3.967 1.481-8.279-6.064-5.828 8.332-1.151z"
                />
              </svg>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="#f6bf3a"
              >
                <path
                  d="M12 .587l3.668 7.568 8.332 1.151-6.064 5.828 1.48 8.279-7.416-3.967-7.417 3.967 1.481-8.279-6.064-5.828 8.332-1.151z"
                />
              </svg>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="#f6bf3a"
              >
                <path
                  d="M12 .587l3.668 7.568 8.332 1.151-6.064 5.828 1.48 8.279-7.416-3.967-7.417 3.967 1.481-8.279-6.064-5.828 8.332-1.151z"
                />
              </svg>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="#f6bf3a"
              >
                <path
                  d="M12 .587l3.668 7.568 8.332 1.151-6.064 5.828 1.48 8.279-7.416-3.967-7.417 3.967 1.481-8.279-6.064-5.828 8.332-1.151z"
                />
              </svg>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="#f6bf3a"
              >
                <path
                  d="M12 5.173l2.335 4.817 5.305.732-3.861 3.71.942 5.27-4.721-2.524v-12.005zm0-4.586l-3.668 7.568-8.332 1.151 6.064 5.828-1.48 8.279 7.416-3.967 7.416 3.966-1.48-8.279 6.064-5.827-8.332-1.15-3.668-7.569z"
                />
              </svg>
            </span>
            <h3 class="rating">(4.5)</h3>
          </div>


          <h2 class="prod_title"><%=p_brand%></h2>
          <h1 class="prod_title"><%=p_name%></h1>
          <h2 class="prod_price"><%=p_desc %></h2>

          <div class="purchase">
            <div class="num_quantity">
              <button class="btn_down btn">-</button>
              <input
                type="number"
                class="number"
                value="1"
                step="1"
                min="1"
                max="10"
              />
              <button class="btn_up btn">+</button>
            </div>
            <em class="total_price"><%=p_price %>원</em>
          </div>

          <div class="prod_btn">
            <div class="buy_btn btn">
              <a href=""> 바로 구매하기</a>
            </div>
            <div class="cart_btn btn">
              <a href=""> 장바구니 담기 </a>
            </div>
            <!-- </div> -->
          </div>
        </div>
      </div>

      <div class="tablist_wrap">
        <ul class="tabs">
          <li class="description_tab active">상품상세정보</li>
          <li class="reviews_tab">상품리뷰</li>
          <li class="qna_tab">Q&A</li>
          <li class="shopping_tab">배송/반품/교환안내</li>
        </ul>
      </div>

      <div class="prod_detail">
        <img
          src="https://img.dogpre.com/web/dogpre/product/81/80534_desc_511132.jpg"
          alt="츄통령 멍츄 산양유 우피스틱 35g 상세정보"
        />
      </div>
    </main>

    <!-- footer -->
    <footer>
      <p>copyright 2020 에이콘 아카데미 2조</p>
    </footer>
    <!-- /footer -->
  </body>
</html>
