<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML>
<html>
<head>
<title>MyPage</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${path}/resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">
<link href="${path}/resources/css/slider/slider-banner.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
.main {
	background-color: white;
	color: black;
}

.user {
	height: 100px;
}

div .box1 {
	width: 50%;
	float: left;
	box-sizing: border-box;
	text-align: center;
	height: 100%;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	font-size: 15px;
}

.profile{
	width: 70px;
    height: 70px; 
    border-radius: 70%;
    overflow: hidden;
    background-color: lightgray;
}

div .box2 {
	width: 50%;
	float: right;
	box-sizing: border-box;
	height: 100%;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: space-evenly;
}

.title {
	text-align: center;
	font-size: 25px;
}

.list {
	text-align: center;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

div .card {
	height: 200px;
	width: 200px;
	border-radius: 15px;
	display: inline-block;
	margin-top: 0px;
	margin-left: 0px;
	margin-bottom: 0px;
	position: relative;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.card_header {
	position: relative;
	width: 100%;
	height: 140px;
	border-radius: 15px 15px 0 0;
	background-size: 100% 250px;
}

.card_header_D-day {
	position: absolute;
	top: 0px;
	left: 125px;
	background-color: #EF5A31;
	color: #FFF;
	font-weight: bold;
	text-align: center;
	float: right;
	margin: 10px 10px 0 0;
	border-radius: 50%;
	font-weight: bold;
	padding: 10px 10px;
	line-height: 20px;
}


.card_body {
	position: absolute;
	margin-top: 15px;
	margin-bottom: 6px;
	bottom: 0;
	width: 200px;
	font-size: 14px;
	color: #9FA5A8;
	padding: 0 15px;
}

.payment {
	float: right;
}

.paging {
	text-align: center;
}

.paging a {
	display: inline-block;
	font-weight: bold;
	text-decoration: none;
	padding: 5px 8px;
	border: 1px solid #ccc;
	color: #000;
	background-color: skyblue;
}
</style>

</head>
<body id="top">
	<!-- header include -->
	<jsp:include page="../../pages/form/header.jsp"></jsp:include>

	<div class="main">
		<div class="user">
			<div class="box1">
				<!-- 
				<div class="profile">
					<img alt="프로필" src="">
				</div>
				 -->
				&nbsp; &nbsp;
				<h3 class="userId">아이디 : ${sessionScope.login.m_email }</h3>
				<h3 class="userNck">닉네임 : ${sessionScope.login.m_nickname }</h3>
			</div>
			<div class="box2">
				<input type="button" style="width: 120px; height: 30px; font-size: 15px; background-color: skyblue; border-radius: 5px;" value="회원정보수정" onclick="location.href='creatorUpdate'">
				<input type="button" style="width: 100px; height: 30px; font-size: 15px; background-color: skyblue; border-radius: 5px;" value="로그아웃" onclick="location.href='logout'">
			</div>
			<hr>
		</div>
		<div class="project">
			<br>
			<div class="title">참여중인 프로젝트</div>
			<br>
			<div class="list">
				<c:choose>
					<c:when test="${empty list }">
						<h1>===참여중인 프로젝트가 없습니다.===</h1>
					</c:when>
					<c:otherwise>
						<c:forEach var="user" items="${user }">
							<a href="#">
								<div class="card">
									<div class="card_header">
										<img src="${path}/resources/images/" style="width:100%; height: 100%">
										<div class="card_header_D-day">
											<div class="card_header_text">마감일</div>
											<div class="card_header_number"><fmt:formatDate value="${user.end_date }" pattern="yy.MM.dd"/></div>
										</div>
									</div>
			
									<div class="card_body">
										<hr>
										<i class="name" style="font-size: 12pt;">${user.p_title }</i>
										<br>
										<i class="payment"> 결제금액 : ${user.order_pay }원 </i>
									</div>
								</div>
							</a>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<br>
			<br>
			<br>
			<hr>
		</div>
		
		<div class="project">
			<br>
			<div class="title">진행중인 프로젝트</div>
			<br>
			<div class="list">
				<c:choose>
					<c:when test="${empty user }">
						<h1>===진행중인 프로젝트가 없습니다.===</h1>
					</c:when>
					<c:otherwise>
						<c:forEach var="creator" items="${user }">
							<a href="#">
								<div class="card">
									<div class="card_header">
										<img src="${path}/resources/images/" style="width:100%; height: 100%">
										<div class="card_header_D-day">
											<div class="card_header_text">마감일</div>
											<div class="card_header_number"><fmt:formatDate value="${creator.end_date }" pattern="yy.MM.dd"/></div>
										</div>
									</div>
			
									<div class="card_body">
										<hr>
										<i class="name" style="font-size: 12pt;">${creator.p_title }</i>
										<br>
										<i class="payment"> 목표금액 : ${creator.target_amount }원 </i>
									</div>
								</div>
							</a>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<br>
			<div class="paging">
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
			</div>
			<br>
			<br>
		</div>
	</div>
		















	<!-- footer include -->
	<!-- JAVASCRIPTS -->
	<jsp:include page="../../pages/form/footer.jsp"></jsp:include>
	<script src="${path}/resources/js/jquery.min.js"></script>
	<script src="${path}/resources/js/jquery.backtotop.js"></script>
	<script src="${path}/resources/js/jquery.mobilemenu.js"></script>
</body>
</html>