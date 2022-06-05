<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" id="font-awesome-css"
	href="/css/font-awesome.min.css?ver=5.15.4" type="text/css" media="all">
<link rel="stylesheet" id="bootstrap-css"
	href="/css/bootstrap.min.css?ver=4.6.0" type="text/css" media="all">
<link rel="stylesheet" id="smartmenus-bootstrap-css"
	href="/css/smartmenus-bootstrap.min.css?ver=1.1.1" type="text/css"
	media="all">
<link rel="stylesheet" id="swiper-css"
	href="/css/swiper.min.css?ver=4.5.3" type="text/css" media="all">
<link rel="stylesheet" id="magnific-popup-css"
	href="/css/magnific-popup.min.css?ver=1.1.0" type="text/css"
	media="all">
<link rel="stylesheet" id="lana-pet-icon-css"
	href="/css/lana-pet-icon.min.css?ver=1.0.0" type="text/css" media="all">
<link rel="stylesheet" id="lana-pet-theme-css"
	href="/css/lana-pet-theme.min.css?ver=1.0.0" type="text/css"
	media="all">
<link rel="stylesheet" id="lana-pet-print-css"
	href="/css/lana-pet-print.min.css?ver=1.0.0" type="text/css"
	media="print">
	<style>
	.headlogo{
		width:200px;
		height:50px;
	}
	.signUplogo{
		width:50px;
		height:50px;
		color:white;
	}
	
	.btn-light{
		border-style:none;
	}
	
	.btn-light:hover{
		color:#f8b03a;
		background-color:#f8b03a;
	}
	
	.nav-links{
		display:block;
		padding: 0.5rem 1rem;
		color: white;
	}
	
	</style>
</head>
<body class="home page page-template-template-lana-editor">

	<header class="header bg-dark">
		<nav class="navbar navbar-expand-lg navbar-dark navbar-only"
			id="lana-pet-main-navbar">
			<a class="navbar-brand" href="Main" style="margin-left:3%;"> 
				<img class="navbar-logo headlogo" src="/img/logo3.png" alt="Navbar Logo">
			</a>
						<!-- 반응형 웹 작동 시 나타남 -->
			<div class="toggler-buttons d-flex flex-fill justify-content-end">
				<button class="search-toggler" type="button" data-toggle="collapse"
					data-target="#lana-search" aria-controls="lana-search"
					aria-expanded="false" aria-label="Toggle search">
					<i><h2 style="color:white;">날씨</h2></i>
				</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#lana-navbar" aria-controls="lana-navbar"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars fa-lg fa-fw text-light"></i>
				</button>
			</div>
						<!-- 반응형 커팅선 -->

			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mr-auto">

					<li class="nav-item dropdown"><a
						class="nav-links dropdown-toggle comu " href="page.html"
						id="page-dropdown" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu" aria-labelledby="page-dropdown">
							<li><a class="dropdown-item" href="/include/community/daily">일상공유</a></li>
							<li><a class="dropdown-item" href="#">자원봉사</a></li>
							<li><a class="dropdown-item" href="#">가정분양</a></li>
							<li><a class="dropdown-item" href="#">물품나눔</a></li>
							<li><a class="dropdown-item" href="#">행사</a></li>
							<li><a class="dropdown-item" href="#">산책로</a></li>
							
						</ul>
					</li>
					
					<li class="nav-item dropdown">
					<a class="nav-links dropdown-toggle organi" href="page.html"
						id="page-dropdown" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">관련기관</a>
						<ul class="dropdown-menu" aria-labelledby="page-dropdown">
							<li><a class="dropdown-item" href="/include/agencyHotel">애견호텔</a></li>
							<li><a class="dropdown-item" href="/include/agencyCafe">애견카페</a></li>
							<li><a class="dropdown-item" href="/include/agencyHospital">동물병원</a></li>
							<li><a class="dropdown-item" href="/include/agencyShelter">보호소</a></li>
							<li><a class="dropdown-item" href="#">장례식장</a></li>
						</ul>
					</li>


					<li class="nav-item"><a class="nav-links info" href="/include/encyclopedia">반려견 사전</a></li>
					
					<li class="nav-item"><a class="nav-links chat" href="/chating/friend?count=1">채팅방</a></li>

				</ul>
				<form class="search-widget d-none d-xl-inline-flex" style="background-color:white; border-radius:10px;">
					<h1 style="color:black; width:18	0px; text-align:center;">날씨</h1>
				</form>
				
				<div class="button-nav-widget d-none d-xl-inline-flex" style="margin-right:3%;">
					<ul class="nav button-nav">
											<!-- 세션입력에 따른 헤더 노출화면 -->
						<c:if test="${empty sessionScope.userNickname }">											
						<li class="nav-item" style="color:white;">
						<a href="Login" class="btn btn-sm text-uppercase font-weight-bold my-auto" style="color:white;"> Login </a>
						</li>
						</c:if>
						
						<c:if test="${not empty sessionScope.userNickname }">
						<li class="nav-item" style="color:white;">
						<a href="myPage/myPageProfile"> <%= session.getAttribute("userNickname") %></a>님 환영합니다.
						</li>
						<li class="nav-item">
						<a href="logout" style="color:white;">Logout</a>
						</li>
						</c:if>

						
					</ul>
					</div >
			</div>

		</nav>
	</header>


	<script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
	<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
	<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
	<script type="text/javascript"
		src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
	<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
	<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
	<script type="text/javascript"
		src="/js/magnific-popup.min.js?ver=1.1.0"></script>
	<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".organi").mouseover(function(){
				$(".organi").css("color","#f8b03a");
			});
			$(".organi").mouseleave(function(){
				$(".organi").css("color","white");	
			});
			$(".comu").mouseover(function(){
				$(".comu").css("color","#f8b03a");
			});
			$(".comu").mouseleave(function(){
				$(".comu").css("color","white");
			});
			$(".info").mouseover(function(){
				$(".info").css("color","#f8b03a");
			});
			$(".info").mouseleave(function(){
				$(".info").css("color","white");
			});
			
			$(".btn-light").mouseover(function(){
				$(".btn-light").css("color","#f8b03a");
			});
			$(".btn-light").mouseleave(function(){
				$(".btn-light").css("color","white");
			});
			
			$(".chat").mouseover(function(){
				$(".chat").css("color","#f8b03a");
			});
			$(".chat").mouseleave(function(){
				$(".chat").css("color","white");
			});
			
		});
	</script>


</body>
</html>