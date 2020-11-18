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

    <title>�α���</title>

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
	<script type="text/javascript">
	
	</script>
<style type="text/css">
a:link {
	color: gray;
	text-decoration: none;
}

a:visited {
	color: gray;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: none;
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
	float: left;
	margin: 5px;
}

#side_rigth_box {
	width: 95%;
	height: 45%;
	background-color: white;
	margin: 5px;
	margin-top: 95%;
}

#LoginID {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#LoginPW {
	width: 500px;
	height: 40px;
	margin: 5px;
	border-radius: 5px;
}

#LoginBtn {
	width: 500px;
	height: 40px;
	background-color: red;
	margin: 5px;
	border-radius: 5px;
	color: white;
}

#JoinBtn {
	width: 500px;
	height: 40px;
	border-radius: 5px;
	border-color: red;
	background-color: white;
	color: red;
	margin: 5px;
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
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">ī�װ� <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">������/���� ��õ</a></li>
                    <li><a href="#">�Ƿ� ��õ</a></li>
                    <li><a href="#">�峭�� ��õ</a></li>
                    <li><a href="#">�Ͽ콺/��Ÿ�� ��õ</a></li>       
<!--                     <li class="divider">#</li> -->
<!--                     <li class="dropdown-header">#</li> -->
<!--                     <li><a href="#">#</a></li> -->
<!--                     <li><a href="#">#</a></li> -->
                  </ul>
                </li>
                <li class="active"><a href="../index.jsp">Home</a></li>
                <li><a href="#about">������/���� ��õ</a></li>
                <li><a href="#contact">�Ƿ� ��õ</a></li>
                <li><a href="#contact">�峭�� ��õ</a></li>
                <li><a href="#contact">�Ͽ콺/��Ÿ�� ��õ</a></li>
              </ul>
              <form class="form-inline mt-2 mt-md-0">
			    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
			    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			  </form>
 			  <ul style="list-style:none;">
 			  	<li style="float:right; margin-right:20px"><a href="../join/LoginForm.jsp">�α���</a></li>
 			  	<li style="float:right; margin-right:20px"><a href="../cart/ShoppingCart.jsp">My</a></li>
 			  	<li style="float:right; margin-right:20px"><a href="../join/joinForm.jsp">ȸ������</a></li>
 			  </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>


	<h1 align="center">�α���</h1>
	<div id="side_left">
		<div id="side_left_box"></div>
		<div id="side_left_box"></div>
	</div>


<% if(session.getAttribute("LoginID")==null){ //������ �������� ���� ��� %>
<form method="post" action="../join/member_ok.jsp">
	
	<div id="mid_content">

		<div>
			<input type="text" name = "LoginID" id="LoginID" placeholder="���̵� �Ǵ� �̸����� �Է����ּ���." />
			<br/>
		</div>
		<div>
			<input type="password" name = "LoginPW" id="LoginPW" placeholder="��й�ȣ�� �Է����ּ���." />
		</div>
		<div>
			<input type="checkbox" /> �ڵ� �α���
		</div>
		<div>
			<input type="submit" id="LoginBtn" value="�α���"/>
		</div>
		<div>
			<input type="button" id="JoinBtn" onClick="location.href='joinForm.jsp'"
				value="ȸ������" />
		</div>

		<div class="findtab">
			<a href="">���̵� ã��</a> | <a href="">��й�ȣ ã��</a>
		</div>
	</div>
</form>
	<% }else{ %>
		<form method="post" action="../join/logout.jsp">
		<input type="submit" value="�α׾ƿ�" />
	</form>
<% } %>
</form>


</body>
</html>