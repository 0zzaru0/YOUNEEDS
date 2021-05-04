<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${path}/resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="${path}/resources/css/slider/slider-banner.css" rel="stylesheet" type="text/css">
<title>Create Sign up</title>
<style type="text/css">
	*{
  		margin: 0px;
  		padding: 00px;
  		text-decoration: none;
	}
	
	#top{
		background-color: #F4FFFF;
	}
	
	#signup{
		height: 1200px;
	}
	
	.singupForm {
		font-family:sans-serif;
  		position:absolute;
  		margin-top: 400px;
  		margin-bottom: 10px;
  		padding: 30px, 20px;
		width:500px;
		height:1050px;
		background-color:#FFFFFF;
		text-align:left;
		top:50%;
		left:50%;
		transform: translate(-50%,-50%);
		border-radius: 15px;
	}
	
	.singupForm h1{
		text-align: center;
		margin: 30px;
		font-weight: bold;
	}
	
	.emailForm{
		color: black;
		margin: 30px;
		padding: 10px 10px;
		font-size: 15pt;
		font-weight: bold;
	}
	
	.passForm{
		color: black;
		margin: 30px;
		padding: 10px 10px;
		font-size: 15pt;
		font-weight: bold;
	}
	
	.nicknameForm{
		color: black;
		margin: 30px;
		padding: 10px 10px;
		font-size: 15pt;
		font-weight: bold;
	}
	
	.addrForm{
		color: black;
		margin: 30px;
		padding: 10px 10px;
		font-size: 15pt;
		font-weight: bold;
	}
	
	.useremail{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.num_email{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.userpw{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.nickname{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.address{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.sub_address{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.c_name{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		font-size:20px;
		width: 330px;
		height:30px;
		background: none;
	}
	
	.c_intro{
		border: none;
		border-bottom: 2px solid #adadad;
		outline:none;
		color: #636e72;
		background: none;
	}
	
	.userbtn{
		position:relative;
		margin-top: -30px;
		left:80%;
		background-color: #6c5ce7;
		color: white;
		width: 100px;
		height:30px;
		font-size: 10pt;
		font-weight: bold;
		border-radius: 3px;
		border:none;
	}
	
	.btn {
		position:relative;
		left:50%;
		transform: translateX(-50%);
		margin-bottom: 40px;
		width:80%;
		height:40px;
		background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
		background-position: left;
		background-size: 200%;
		color:white;
		font-weight: bold;
		border:none;
		cursor:pointer;
		transition: 0.4s;
		display:inline;
	}
		
	.btn:hover {
		background-position: right;
	}
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function goPopup(){

    new daum.Postcode({
        oncomplete: function(data) {
            $("#address").eq(0).val(data.address);
        }
    }).open();
    
}
</script>
</head>
<body id="top">
	<!-- header include -->
	<jsp:include page="../form/header.jsp"></jsp:include>

<div id="signup">
	<form action="main.do" method="post" class="singupForm">
		<h1>Create account</h1>
		<div class="emailForm">이메일<br><br>
        	<input type="text" id="useremail" class="useremail" placeholder="이메일 입력 후 인증해주세요.">
       		<input type="button" class="userbtn" value="인증하기">
       		<input type="text" id="num_email" class="num_email" placeholder="인증번호 입력하세요.">
       		<input type="button" class="userbtn" value="인증확인">
      	</div>
      	<div class="passForm">비밀번호<br><br>
        	<input type="password" id="userpw" class="userpw" placeholder="비밀번호 입력하세요.">
      		<br>비밀번호 확인<br><br>
        	<input type="password" id="userpw" class="userpw" placeholder="비밀번호 확인하세요.">
      	</div>
      	<div class="nicknameForm">닉네임<br><br>
        	<input type="password" id="nickname" class="nickname" placeholder="닉네임 입력하세요.">
      		<input type="button" class="userbtn" value="중복확인">
      	</div>
      	<div class="addrForm">주소<br><br>
			<input type="button" id="address_btn" class="userbtn" onclick="goPopup()" value="주소검색"> 
			<input type="text" id="address" class="address" placeholder="주소를 검색하세요." required readonly>
      		<input type="text" id="sub_address" class="sub_address" placeholder="상세주소를 입력하세요.">
      	</div>
      	<div class="passForm">창작자 명<br><br>
        	<input type="text" id="c_name" class="c_name" placeholder="창작자명을 입력하세요.">
      		<br>창작자 소개<br><br>
        	<textarea cols="45" rows="3" id="c_intro" class="c_intro" placeholder="창작자 소개를 입력하세요."></textarea>
      	</div>
      	<input type="submit" class="btn" value="Create your YouNeeds account" onclick="">
	</form>
</div>
	<!-- footer include -->
	<jsp:include page="../form/footer.jsp"></jsp:include>

</body>
</html>