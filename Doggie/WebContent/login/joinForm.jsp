
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
        <a href="../index.jsp">W</a>
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
    <div class="account">
      <h1 class="account_title">회원가입</h1>
      <form action="../login/join.jsp" method="post">
        <div class="input">
          <input
            type="text"
            id="NameField"
            name="NameField"
            placeholder="Name"
          />
        </div>
        <div class="input">
          <input
            type="text"
            id="IDField"
            name="IDField"
            placeholder="ID"
          />
        </div>
        <div class="input">
          <input
            type="text"
            id="EmailField"
            name="EmailField"
            placeholder="E-mail"
          />
        </div>
        <div class="input">
          <input
            type="password"
            id="PwField"
            name="PwField"
            placeholder="Password"
          />
        </div>
        <div class="input">
          <input type="password" id="PwreField" placeholder="Password 확인" />
        </div>
        <div class="dog_info">
          <span class="dog_species">반려견 종 선택</span>
          <select id="DogValue" name="DogValue">
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
        <div class="dog_info">
          <span class="dog_age">반려견 나이 선택</span>
          <select id="DogAge" name="DogAge">
            <option value="none">선택</option>
            <option value="age0">0~12개월</option>
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
        <fieldset>
          <div class="checkbox">
            <input type="checkbox" value="" /><label>와이도그 이용약관 동의 (필수)</label>
          </div>

          <div class="checkbox">
            <input type="checkbox" value="" /><label>개인정보 수집/이용 동의 (필수)</label>
          </div>
          <div class="checkbox">
            <input type="checkbox" value="" /><label>뉴스레터 및 이벤트 정보 수신 동의 (선택)</label>
          </div>
        </fieldset>
        <input type="submit" id="JoinBtn" value="가입하기" />
      </form>
    </div>
  </body>
</html>
