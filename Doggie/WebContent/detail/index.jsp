<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="../css/style.css" rel="stylesheet" />
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
            $(function () {
                $('.circle_up').click(function () {
                    var n = $('.circle_up').index(this);
                    var num = $('.number:eq(' + n + ')').val();
                    num = $('.number:eq(' + n + ')').val(num * 1 + 1);
                    var hap = $('.product_price:eq(' + n + ')').val();
                });
                $('.circle_down').click(function () {
                    var n = $('.circle_down').index(this);
                    var num = $('.number:eq(' + n + ')').val();
                    num = $('.number:eq(' + n + ')').val(num * 1 - 1);
                });
            });
        </script>

        <title>Document</title>
    </head>
    <body>
        <header>
            <!-- #logo -->
            <h1 id="logo">
                <a href="/">doggie</a>
            </h1>
            <a href="" class="shop">
                <div class="shop_button">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="#1d6aba"
                        ;
                    >
                        <path
                            d="M24 6h-24v-4h24v4zm0 4h-24v4h24v-4zm0 8h-24v4h24v-4z"
                        />
                    </svg>
                </div>
                shop
            </a>

            <div class="header_tools">
                <a href="" class="login">login</a>
                <div class="cart">
                    <a href="">cart</a>
                </div>
                  
            </div>
        </header>

        <!-- main -->
        <main class="main_wrap">
            <div class="product">
                <div class="product_visual">
                    <!-- <div class="product_wrap"> -->
                    <img
                        src="https://img.dogpre.com/mobile/dogpre/product/81/80534_originalView_01776306.jpg"
                        alt="츄통령 멍츄 산양유 우피스틱 35g"
                    />
                    <!-- </div> -->
                </div>
                <div class="product_order">
                    <div class="product_container">
                        <div class="product_title">
                            <h1>츄통령 멍츄 산양유 우피스틱 35g</h1>
                        </div>
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

                        <div class="purchase">
                            <div class="num_quantity">
                                <div class="circle_down btn">-</div>
                                <input
                                    type="number"
                                    class="number"
                                    value="1"
                                    step="1"
                                    min="1"
                                    max="10"
                                />
                                <div class="circle_up btn">+</div>
                            </div>
                            <em class="product_price">6500 <span>원</span></em>
                        </div>
                        <div class="product_btn">
                            <div class="buy_btn btn">
                                <a href=""> 바로 구매하기</a>
                            </div>
                            <div class="cart_btn btn">
                                <a href=""> 장바구니 담기 </a>
                            </div>
                        </div>
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

            <div class="product_detail">
                <img
                    src="https://img.dogpre.com/web/dogpre/product/81/80534_desc_511132.jpg"
                    alt="츄통령 멍츄 산양유 우피스틱 35g 상세정보"
                />
            </div>
        </main>

        <!-- footer -->
        <footer>
            <p class="pull-right">
                <a href="#">Back to top</a>
            </p>
            <p>
                &copy; 2020 에이콘 아카데미 2조, Inc. &middot;
                <a href="#">Privacy</a> &middot;
                <a href="#">Terms</a>
            </p>
        </footer>
        <!-- /footer -->
    </body>
</html>
