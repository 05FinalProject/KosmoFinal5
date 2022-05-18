<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>너와 함개</title>


<link rel="stylesheet" id="bootstrap-css"
	href="/css/bootstrap.min.css?ver=4.6.0" type="text/css" media="all">
<link rel="stylesheet" id="smartmenus-bootstrap-css"
	href="/css/smartmenus-bootstrap.min.css?ver=1.1.1" type="text/css"
	media="all">
<link rel="stylesheet" id="magnific-popup-css"
	href="/css/magnific-popup.min.css?ver=1.1.0" type="text/css"
	media="all">
<link rel="stylesheet" id="lana-pet-theme-css"
	href="/css/lana-pet-theme.min.css?ver=1.0.0" type="text/css"
	media="all">


<link rel="stylesheet" href="/css/HeadFootPage.css" type="text/css">
</head>
<body class="home page page-template-template-lana-editor">
	<header
		class="header headColor lana-full-bg-image-golden-large-sitting-dog-body-indoor d-flex flex-column"
		id="slider-header">
		<nav class="navbar navbar-expand-lg navbar-dark bg-transparent"
			id="lana-pet-main-navbar">
			<!-- 상단 네비바 이미지 -->
			<a class="navbar-brand" href="#"> 
			<img class="navbar-logo mainLogo mx-auto" src="/img/그림3.png"
				alt="Navbar Logo">
			</a>
			<div class="toggler-buttons d-flex flex-fill justify-content-end">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#lana-navbar" aria-controls="lana-navbar"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars fa-lg fa-fw text-light"></i>
				</button>
			</div>
			<!--상단 Nav bar 대 카테고리-->
			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mx-auto bigCate">
					<li class="nav-item comu">
					<span class="nav-link"><span id="comu">커뮤니티</span></span></li>

					<!-- 추후 기관 버튼 삭제 예정 -->
					<li class="nav-item organi"><span class="nav-link"><span
							id="organi">기관</span></span></li>

					<li class="nav-item info"><span class="nav-link"><span
							id="info">정보나눔</span></span></li>
				</ul>
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="#">날씨 적용할 칸</a>
					</li>
				</ul>
				<!-- 마이 페이지 -->
				<div class="button-nav-widget d-xl-inline-flex">
					<ul class="nav button-nav">
						<li class="nav-item"><a href="#" class="btn joinbutton">
								<img src="/img/Guest.png" class="join">
						</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- 상단 Nav bar 대 카테고리 끝-->


	<!-- 상단 Nav bar 서브 카테고리 -->
	<!-- 서브 Nav bar 카테고리 - 커뮤니티 -->
	<div class="subCate comunity">
		<nav class="navbar navbar-expand-lg navbar-dark"
			id="lana-pet-main-navbar">
			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">일상공유</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">자원봉사</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">가정분양</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">물품나눔</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">행사</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">산책로</span></a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- 서브 Nav bar 카테고리 - 기관 -->
	<div class="subCate organization off">
		<nav class="navbar navbar-expand-lg navbar-dark"
			id="lana-pet-main-navbar">
			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">훈련소</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">보호소</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">동물병원</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">애견호텔</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">유치원</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">장례식장</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">공원</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">애견카페</span></a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- 서브 Nav bar 카테고리 - 정보나눔 -->
	<div class="subCate information off">
		<nav class="navbar navbar-expand-lg navbar-dark"
			id="lana-pet-main-navbar">
			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">백과사전</span></a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- 서브 Nav bar 카테고리 - 마이페이지 -->
	<div class="subCate myPage off">
		<nav class="navbar navbar-expand-lg navbar-dark"
			id="lana-pet-main-navbar">
			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="subFont">프로필</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">나의 게시글</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">반려동물</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">펫친관리</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">펫친찾기</span></a></li>
					<li class="nav-item"><a class="nav-link sub" href="#"><span
							class="subFont">나의 산책로</span></a></li>
				</ul>
			</div>
		</nav>
	</div>

	<script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
	<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
	<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
	<script type="text/javascript"
		src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
	<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
	<script type="text/javascript"
		src="/js/magnific-popup.min.js?ver=1.1.0"></script>
	<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
	<script type="text/javascript">
		//eq(0) = ì»¤ë®¤ëí°
		$(document).ready(function() {
			$(".bigCate li.comu").click(function() {
				$(".comunity").removeClass("off");
				$(".organization").addClass("off");
				$(".information").addClass("off");
				$(".myPage").addClass("off");
			});

			$(".bigCate li.organi").click(function() {
				$(".organization").removeClass("off");
				$(".comunity").addClass("off");
				$(".information").addClass("off");
				$(".myPage").addClass("off");
			});

			$(".bigCate li.info").click(function() {
				$(".information").removeClass("off");
				$(".comunity").addClass("off");
				$(".organization").addClass("off");
				$(".myPage").addClass("off");
			});

			$(".bigCate li.myPage").click(function() {
				$(".myPage").removeClass("off");
				$(".comunity").addClass("off");
				$(".information").addClass("off");
				$(".myPage").addClass("off");
			});

		});
	</script>

</body>
</html>