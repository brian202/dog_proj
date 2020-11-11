<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<%
	String id = request.getParameter("id");
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
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="#about">영양제/간식 추천</a></li>
                <li><a href="#contact">의류 추천</a></li>
                <li><a href="#contact">장난감 추천</a></li>
                <li><a href="#contact">하우스/울타리 추천</a></li>
              </ul>
              <form class="form-inline mt-2 mt-md-0">
			    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
			    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			  </form>
 			  <ul style="list-style:none;">
				<form method="post" action="../index.jsp">
					<%=session.getAttribute("id") %>님 환영합니다~
					<input type="submit" value="로그아웃" />
					<li style="float:right; margin-right:20px;"><a href="../cart/ShoppingCart.jsp" style="color:#fdfdfd">My</a></li>
				</form>
			</ul>
            </div>
          </div>
        </nav>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="https://img.dogpre.com/web/dogpre/event/main_banner/sno_top1_202011091047081.jpg" alt="First slide" style = "height : 500px;">
          <div class="container">
            <div class="carousel-caption">
              <h1>First Slide</h1>
              <p>첫번째 슬라이드 입니다.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">바로 가기</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="https://img.dogpre.com/web/dogpre/event/main_banner/sno_top1_202011030954481.jpg" alt="Second slide" style = "height : 500px;">
          <div class="container">
            <div class="carousel-caption">
              <h1>Second Slide</h1>
              <p>두번째 슬라이드 입니다.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">바로 가기</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="https://img.dogpre.com/web/dogpre/event/main_banner/sno_top1_202010120936371.jpg" alt="Third slide" style = "height : 500px;">
          <div class="container">
            <div class="carousel-caption">
              <h1>Third Slide</h1>
              <p>세번째 슬라이드 입니다.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">바로 가기</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="https://img.dogpre.com/web/dogpre/event/main_banner/sno_top1_202010161633581.jpg" alt="Third slide" style = "height : 500px;">
          <div class="container">
            <div class="carousel-caption">
              <h1>fourth Slide</h1>
              <p>네번째 슬라이드 입니다.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">바로 가기</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing" style="width : 1400px;">

      <!-- Three columns of text below the carousel -->
      <div class="row">
 		<div class="title" align = "right">
 		  <h2 align = "left">이 상품 어때요?</h2>
		  <a class="btn btn-default" href="#" role="button">더보기 &raquo;</a>
 		</div>
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어</h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/product/image/vendoritem/2019/03/14/3000281274/4057ec60-4cde-47d9-8cfc-3a6f3f2d3e05.jpg" alt="Generic placeholder image">
          <h3>나우 그레인프리 스몰브리드</h3>
          <p>이에 대한 설명 혹은 가격2(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/85907803434094-ef9a75a5-997b-4852-8916-2357c33b87c8.jpg" alt="Generic placeholder image">
          <h3>아카나  스몰브리드</h3>
          <p>이에 대한 설명 혹은 가격3(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어 2 </h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div>
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어 3 </h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div>
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
      	<div class="title" align = "right">
 		  <h2 align = "left">이 상품 어때요?</h2>
		  <a class="btn btn-default" href="#" role="button">더보기 &raquo;</a>
 		</div>
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어</h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/product/image/vendoritem/2019/03/14/3000281274/4057ec60-4cde-47d9-8cfc-3a6f3f2d3e05.jpg" alt="Generic placeholder image">
          <h3>나우 그레인프리 스몰브리드</h3>
          <p>이에 대한 설명 혹은 가격2(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/85907803434094-ef9a75a5-997b-4852-8916-2357c33b87c8.jpg" alt="Generic placeholder image">
          <h3>아카나  스몰브리드</h3>
          <p>이에 대한 설명 혹은 가격3(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어 2 </h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div>
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어 3 </h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="title" align = "right">
 		  <h2 align = "left">이 상품 어때요?</h2>
		  <a class="btn btn-default" href="#" role="button">더보기 &raquo;</a>
 		</div>
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어</h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/product/image/vendoritem/2019/03/14/3000281274/4057ec60-4cde-47d9-8cfc-3a6f3f2d3e05.jpg" alt="Generic placeholder image">
          <h3>나우 그레인프리 스몰브리드</h3>
          <p>이에 대한 설명 혹은 가격2(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/85907803434094-ef9a75a5-997b-4852-8916-2357c33b87c8.jpg" alt="Generic placeholder image">
          <h3>아카나  스몰브리드</h3>
          <p>이에 대한 설명 혹은 가격3(?)</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어 2 </h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div>
        <div class="col-lg-4" style="width : 20%;">
          <img class="img-circle" src="https://img.dogpre.com/mobile/dogpre/product/63/62596_list_L1_01611518.jpg" alt="Generic placeholder image">
          <h3>로얄캐닌 독 미니 인도어 3 </h3>
          <p>이에 대한 설명 혹은 가격(?)</p>
        </div>
      </div>

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


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
