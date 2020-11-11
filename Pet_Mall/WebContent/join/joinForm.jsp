<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>로그인</title>

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

<style type="text/css">
body {
	font-family: 'Noto Sans KR', sans-serif;
}

a:link {
	color: blue;
	text-decoration: none;
}

a:visited {
	color: blue;
	text-decoration: none;
}

a:hover {
	color: red;
	text-decoration: none;
}

input::placeholder {
	font-style: italic;
	opacity: 1;
}

div#side_left {
	width: 35%;
	height: 400px;
	/* background-color:black; */
	float: left;
	margin: 5px;
}

#side_left_box {
	width: 95%;
	height: 45%;
	background-color: white;
	float: left;
	margin: 5px;
}

#mid_content {
	width: 30%;
	height: 400px;
	/* background-color:black; */
	float: left;
	margin: 5px;
}

#side_content_box {
	display: inline;
	background-color: white;
	margin: 5px;
}

#side_rigth {
	width: 35%;
	height: 400px;
	/* background-color:black; */
	float: right;
	margin: 5px;
}

#side_rigth_box {
	width: 95%;
	height: 45%;
	background-color: white;
	margin: 5px;
	margin-top: 95%;
}

#IDField {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#NameField {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#PwField, #PwreField {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#EmailField {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#DogValue {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#DogAge {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#JoinBtn {
	width: 500px;
	height: 40px;
	background-color: red;
	margin: 5px;
	border-radius: 5px;
	color: white;
}

.findtab {
	text-align: center;
	width: 500px;
	color: gray;
	font-size: small;
}
</style>

</head>
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
              <a class="navbar-brand" href="../index.jsp">PET MALL</a>
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
                <li class="active"><a href="../index.jsp">Home</a></li>
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
 			  	<li style="float:right; margin-right:20px"><a href="../join/LoginForm.jsp">로그인</a></li>
 			  	<li style="float:right; margin-right:20px"><a href="../cart/ShoppingCart.jsp">My</a></li>
 			  	<li style="float:right; margin-right:20px"><a href="../join/joinForm.jsp">회원가입</a></li>
 			  </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
    
	<h1 align="center">회원가입</h1>


	<div id="side_left">

		<div id="side_left_box"></div>
		<div id="side_left_box"></div>
	</div>

	<form action="join.jsp" method="post">
		<div id="mid_content">

			<div>
				이름 (*)<br /> <input type="text" id="NameField" name="NameField"
					placeholder="이름을 입력하세요." /> <br />
			</div>
			<div>
				아이디 (*)<br /> <input type="text" id="IDField" name="IDField"
					placeholder="아이디를 입력하세요." />
			</div>
			<div>
				이메일 (*)<br /> <input type="email" id="EmailField" name="EmailField"
					placeholder="이메일을 입력하세요." />
			</div>
			<div>
				비밀번호 (*)<br /> <input type="text" id="PwField" name="PwField"
					placeholder="비밀번호를 입력하세요." /> <br />
			</div>
			<div>
				비밀번호 확인 (*)<br /> <input type="text" id="PwreField"
					placeholder="비밀번호를 한번 더 입력하세요." />
			</div>
			<div>
				반려견 종 선택<br /> 
				<select name="DogValue" id="DogValue">

					<option value="none">선택</option>
					<option value="Pomeranian">포메라니안</option>
					<option value="Chihuahua">치와와</option>
					<option value="Miniature_Pinscher">미니핀</option>
					<option value="papillon">파피용</option>
					<option value="Toy_Poodle">토이 푸들</option>
					<option value="Miniature_Dachshund">미니어쳐 닥스훈트</option>
					<option value="poodle">푸들</option>
					<option value="Yorkshire_terrier">요크셔테리어</option>
					<option value="Maltese">말티즈</option>
					<option value="Bichon_Frise">비숑 프리제</option>
					<option value="Miniature_Schnauzer">슈나우저</option>
					<option value="Pekingese">페키니즈</option>
					<option value="Pug">퍼그</option>
					<option value="Welsh_corgi">웰시코기</option>
					<option value="French_Bulldog">프렌치 불독</option>
					<option value="Beagle">비글</option>
					<option value="Cocker_Spaniel">코카 스파니엘</option>
					<option value="Boston_Terrier">보스턴 테리어</option>
					<option value="Shetland_Sheepdog">셔틀랜드 쉽독</option>
					<option value="Italian_Greyhound">이탈리안 그레이하운드</option>
					<option value="Scottish_Terrier">스코티시 테리어</option>
					<option value="Bedlington_Terrier">베들링턴 테리어</option>
					<option value="Shibainu">시바이누</option>
					<option value="Border_collie">보더콜리</option>
					<option value="Bull_Terrier">불테리어</option>
					<option value="Shih_Tzu">시추</option>

				</select>
			</div>
			<div>
				반려견 나이 선택<br /> 
				<select name="age" id="DogAge" name="DogAge">
					<option value="none">선택</option>
					<option value="age0">12개월 미만</option>
					<option value="age1">1</option>
					<option value="age2">2</option>
					<option value="age3">3</option>
					<option value="age4">4</option>
					<option value="age5">5</option>
					<option value="age6">6</option>
					<option value="age7">7</option>
					<option value="age8">8</option>
					<option value="age9">9</option>
					<option value="age10">10</option>
					<option value="age11">11</option>
					<option value="age12">12</option>
					<option value="age13">13</option>
					<option value="age16">14</option>
					<option value="age16">15</option>
					<option value="age16">16</option>
				</select>
			</div>

			<div>

				<!-- <a href="join.jsp"> -->
				<input type="submit" id="JoinBtn" value="회원가입" />
				<!-- </a> -->
	</form>
	</div>
	<div class="">
		본인은 만 14세 이상이며, <a href="#">이용약관</a>,<a href="#">개인정보 수집 및 이용</a> 내용을 확인 하였으며, 동의합니다.
	</div>
	</div>




</body>
</html>