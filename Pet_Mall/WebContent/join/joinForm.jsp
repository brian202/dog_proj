<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

<style type="text/css">

body{
font-family: 'Noto Sans KR', sans-serif;
}
 a:link { color: blue; text-decoration: none;}
 a:visited { color: blue; text-decoration: none;}
 a:hover { color: red; text-decoration: none;}

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
border-radius : 5px;
}
#NameField {
	width: 500px;
	height: 40px;
	margin: 5px;
border-radius : 5px;
}
#PwField, #PwreField {
	width: 500px;
	height: 40px;
	margin: 5px;
border-radius : 5px;
}


#EmailField {
	width: 500px;
	height: 40px;
	margin: 5px;
border-radius : 5px;
}
#DogValue{
	width: 500px;
	height: 40px;
	margin: 5px;
border-radius : 5px;
}

#DogAge{
	width: 500px;
	height: 40px;
	margin: 5px;
border-radius : 5px;
}


#JoinBtn {
	width: 500px;
	height: 40px;
	background-color: red;
	margin: 5px;
	border-radius : 5px;
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

<h1 align="center">ȸ������</h1>


	<div id="side_left">
		
		<div id="side_left_box"></div>
		<div id="side_left_box"></div>
	</div>
	
	<form action="join.jsp" method="post">
	<div id="mid_content">
	
		<div>�̸�<br/>
			<input type="text" id="NameField" name="NameField" placeholder="�̸��� �Է��ϼ���." />
			<br />
		</div>
		<div>���̵�<br/>
			<input type="text" id="IDField" name="IDField" placeholder="���̵� �Է��ϼ���." />
			</div>
		<div>�̸���<br/>
			<input type="text" id="EmailField" name="EmailField" placeholder="�̸����� �Է��ϼ���." />
			</div>
			<div>��й�ȣ<br/>
			<input type="text" id="PwField" name="PwField" placeholder="��й�ȣ�� �Է��ϼ���." />
			<br />
		</div>
		<div>��й�ȣ Ȯ��<br/>
			<input type="text" id="PwreField" placeholder="��й�ȣ�� �ѹ� �� �Է��ϼ���." />
			</div>
			<div>�ݷ��� �� ����<br/>
<select name="dogvalue" id="DogValue" name="DogValue">
		
		<option value="">����</option>
		<option value="">���޶�Ͼ� </option>
		<option value="">ġ�Ϳ�</option>
		<option value="">�̴���</option>
		<option value="">���ǿ�</option>
		<option value="">���� Ǫ��</option>
		<option value="">�̴Ͼ��� �ڽ���Ʈ</option>
		<option value="">Ǫ��</option>
		<option value="">��ũ���׸���</option>
		<option value="">��Ƽ��</option>
		<option value="">��� ������</option>
		<option value="">��������</option>
		<option value="">��Ű����</option>
		<option value="">�۱�</option>
		<option value="">�����ڱ�</option>
		<option value="">����ġ �ҵ�</option>
		<option value="">���</option>
		<option value="">��ī ���ĴϿ�</option>
		<option value="">������ �׸���</option>
		<option value="">��Ʋ���� ����</option>
		<option value="">��Ż���� �׷����Ͽ��</option>
		<option value="">����Ƽ�� �׸���</option>
		<option value="">���鸵�� �׸���</option>
		<option value="">�ù��̴�</option>
		<option value="">�����ݸ�</option>
		<option value="">���׸���</option>
		<option value="">����</option>
			
</select>
			</div>
			<div>�ݷ��� ���� ����<br/>
  <select name="age" id="DogAge" name="DogAge">
    <option value="none">����</option>
    <option value="age0">0~12����</option>
    <option value="age1" >1</option>
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
					<input type="submit" id="JoinBtn" value="ȸ������"/><!-- </a> -->
					</form>
				</div>
<div class="">
������ �� 14�� �̻��̸�, ����������� ,<a href="">�̿���</a>,<a href="">�������� ���� �� �̿�</a> ������ Ȯ�� �Ͽ�����, �����մϴ�.
	</div>
	</div>
	



</body>
</html>