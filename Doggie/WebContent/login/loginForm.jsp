<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../css/common.css" rel="stylesheet" />
    <link href="../css/account.css" rel="stylesheet" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

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
        <a href="../category/category_all.jsp" class="shop">shop</a>

        <a href="../login/login.jsp" class="login">login</a>
        <a href="" class="cart">cart</a>
      </div>
    </nav>
    <!-- //navigation -->
    
    
<% if(session.getAttribute("LoginID")==null){ //세션이 설정되지 않을 경우 %>
    
    <div class="account">
      <h1 class="account_title">로그인</h1>

      <form action="../login/member_ok.jsp" class="login_form" method="post">
        <div class="input">
          <input type="text" id="id" name="id" size="10" placeholder="아이디" />
        </div>
        <div class="input">
          <input
            type="password"
            id="pw"
            name="pw"
            size="10"
            placeholder="비밀번호"
          />
        </div>
        <div class="input">
          <input
            type="password"
            id=""
            name=""
            size="10"
            placeholder="비밀번호 재확인"
          />
        </div>
        <input type="submit" id="" value="로그인" />
        <br>
        <input type="button" id="" onclick="location.href='../login/joinForm.jsp'" value = "회원가입"/>
      </form>
    </div>
    
<% }else{ %>
		<form method="post" action="../logout/logout.jsp">
			<input type="submit" value="로그아웃" />
		</form>
<% } %>

  </body>
</html>
