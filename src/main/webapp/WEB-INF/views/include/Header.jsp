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
.headlogo {
	width: 200px;
	height: 50px;
}

.signUplogo {
	width: 50px;
	height: 50px;
	color: white;
}

.btn-light {
	border-style: none;
}

.btn-light:hover {
	color: #f8b03a;
	background-color: #f8b03a;
}

.nav-links {
	display: block;
	padding: 0.5rem 1rem;
	color: white;
}

.iconc {
	border-radius: 400px;
}

ul {
	align-items: center;
}

#chatingRoom {
	color: white;
}
</style>

<script defer
	src="https://use.fontawesome.com/releases/v5.15.2/js/all.js"
	integrity="sha384-vuFJ2JiSdUpXLKGK+tDteQZBqNlMwAjhZ3TvPaDfN9QmbPb7Q8qUpbSNapQev3YF"
	crossorigin="anonymous"></script>
</head>
<body class="home page page-template-template-lana-editor">

	<header class="header bg-dark">
		<nav class="navbar navbar-expand-lg navbar-dark navbar-only"
			id="lana-pet-main-navbar">
			<a class="navbar-brand" href="/include/Main" style="margin-left: 3%;">
				<img class="navbar-logo headlogo" src="/img/logo3.png"
				alt="Navbar Logo">
			</a>
			<!-- 반응형 웹 작동 시 나타남 -->
			<div class="toggler-buttons d-flex flex-fill justify-content-end">
				<button class="search-toggler" type="button" data-toggle="collapse"
					data-target="#lana-search" aria-controls="lana-search"
					aria-expanded="false" aria-label="Toggle search">
					<div class="weather ">
						<div class="iconc bg-white"></div>
					</div>
				</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#lana-navbar" aria-controls="lana-navbar"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars fa-lg fa-fw text-light"></i>
				</button>

				<c:choose>
				
				<c:when test="${empty sessionScope.userEmail }">
				<button class="navbar-toggler" type="button"
					onclick="location.href='/myPage/Login'">
					<i class="fas fa-user fa-lg fa-fw text-light"></i>
				</button>
				</c:when>

				<c:otherwise>
				<button class="navbar-toggler" type="button"
					onclick="location.href='/myPage/myPageProfile'">
					<i class="fas fa-user fa-lg fa-fw text-primary" style="color:blue"></i>
				</button>
				<button class="navbar-toggler" type="button"
					onclick="location.href='/myPage/logout'">
					<i class="fa fa-window-close fa-lg fa-fw text-light"></i>
				</button>
				</c:otherwise>
				
				</c:choose>
				
			</div>
			<!-- 반응형 커팅선 -->

			<div class="collapse navbar-collapse" id="lana-navbar">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-links daily"
						href="/community/daily">일상공유</a></li>

					<li class="nav-item dropdown"><a
						class="nav-links dropdown-toggle organi" href="#"
						id="page-dropdown" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">관련기관</a>
						<ul class="dropdown-menu" aria-labelledby="page-dropdown">
							<li><a class="dropdown-item" href="/agency/agencyHotel">애견호텔</a></li>
							<li><a class="dropdown-item" href="/agency/agencyCafe">애견카페</a></li>
							<li><a class="dropdown-item" href="/agency/agencyHospital">동물병원</a></li>
							<li><a class="dropdown-item" href="/agency/agencyShelter">보호소</a></li>
							<li><a class="dropdown-item" href="/agency/agencyHall">장례식장</a></li>
						</ul></li>


					<li class="nav-item"><a class="nav-links info"
						href="/agency/encyclopedia">반려견 사전</a></li>
					<c:if test="${not empty sessionScope.userEmail }">
						<li class="nav-item"><a class="nav-links chat"
							id="chatingRoom" style="cursor: pointer;">채팅방</a></li>
						<li class="nav-item"><a class="nav-links walk" href="/walk"
							style="cursor: pointer;">산책하기</a></li>
					</c:if>
				</ul>
				<form action="/chating/room" method="post" id="chatingFrm">
					<input type="hidden" name="userEmail"
						value="${sessionScope.userEmail}">
				</form>


				<div class="weather ">
					<div class="iconc bg-white"></div>
					<!-- 	<div class="CurrIcon"></div>
					<div class="CurrTemp"></div>
					<div class="City"></div> -->
				</div>

				<div class="button-nav-widget 	d-none d-xl-inline-flex"
					style="margin-right: 3%;">
					<ul class="nav button-nav">
						<!-- 세션입력에 따른 헤더 노출화면 -->
						<c:if test="${empty sessionScope.userNickname }">
							<li class="nav-item" style="color: white;"><a
								href="/myPage/Login"
								class="btn btn-sm text-uppercase font-weight-bold my-auto"
								style="color: white;"> Login </a></li>
						</c:if>

						<c:if test="${not empty sessionScope.userNickname }">
							<li class="nav-item" style="color: white;"><a
								href="/myPage/myPageProfile"> <%=session.getAttribute("userNickname")%></a>님
								환영합니다.</li>

							<!-- 알림 추가 -->
							<li class="nav-item dropdown bell"><a class="nav-link"
								data-toggle="dropdown" href="#"> <i class="far fa-bell"
									style="color: ff8a00;"></i> <small><span
										class="badge badge-warning navbar-badge">N</span></small>

							</a>
								<div
									class="dropdown-menu dropdown-menu-lg dropdown-menu-right bell2">
									<a class="dropdown-item" id="unreadMessageBtn"> <i
										class="fas fa-envelope mr-2"></i> <label id="unreadMessage">0</label>
										new messages
									</a>
									<c:if test="${sessionScope.userEmail != null }">
										<form id="friendChating" action="/chating/friendChat"
											method="post">
											<input type="hidden" value="${sessionScope.userEmail }"
												name="userEmail" />
										</form>
										<div class="dropdown-divider"></div>
										<c:choose>
											<c:when test="${friendRequest != 0}">
												<a href="/friend/friendRequestList" class="dropdown-item">

													<i class="fas fa-users mr-2"></i> <label
													id="friendRequests">${friendRequest}</label> friend
													requests
												</a>
											</c:when>
											<c:otherwise>
												<a href="/friend/friendRequestList" class="dropdown-item">
													<i class="fas fa-users mr-2"></i> <label
													id="friendRequests">0</label> friend requests
												</a>
											</c:otherwise>
										</c:choose>
									</c:if>

								</div></li>
							<!-- 알림 추가 끝 -->

							<li class="nav-item"><a href="/myPage/logout" class="logout"
								style="color: white;">Logout</a></li>
						</c:if>


					</ul>
				</div>
			</div>

		</nav>
	</header>

	<div id="map2" style="width: 100%; height: 350px; display: none;"></div>


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
		$(document)
				.ready(
						function() {

							$(".organi").mouseover(function() {
								$(".organi").css("color", "#f8b03a");
							});
							$(".organi").mouseleave(function() {
								$(".organi").css("color", "white");
							});
							$(".daily").mouseover(function() {
								$(".daily").css("color", "#f8b03a");
							});
							$(".daily").mouseleave(function() {
								$(".daily").css("color", "white");
							});
							$(".info").mouseover(function() {
								$(".info").css("color", "#f8b03a");
							});
							$(".info").mouseleave(function() {
								$(".info").css("color", "white");
							});
							$(".walk").mouseover(function() {
								$(".walk").css("color", "#f8b03a");
							});
							$(".walk").mouseleave(function() {
								$(".walk").css("color", "white");
							});

							$(".logout").mouseover(function() {
								$(".logout").css("color", "#f8b03a");
							});
							$(".logout").mouseleave(function() {
								$(".logout").css("color", "white");
							});

							$(".btn-light").mouseover(function() {
								$(".btn-light").css("color", "#f8b03a");
							});
							$(".btn-light").mouseleave(function() {
								$(".btn-light").css("color", "white");
							});

							$(".chat").mouseover(function() {
								$(".chat").css("color", "#f8b03a");
							});
							$(".chat").mouseleave(function() {
								$(".chat").css("color", "white");
							});

							$("#chatingRoom").click(function() {
								$("#chatingFrm").submit();
							});

							$('#unreadMessageBtn').click(function() {
								$('#friendChating').submit()
							})

							$('.svg-inline--fa fa-bell fa-w-14')
									.click(
											function() {
												$(
														'.dropdown-menu dropdown-menu-lg dropdown-menu-right')
														.addClass()
											})

							$('.bell').mouseover(function() {
								$('.bell2').addClass("show");
							})
							$('.bell2').mouseover(function() {
								$('.bell2').addClass("show");
							})

							$('.bell2').mouseleave(function() {
								setTimeout(function() {
									$('.bell2').removeClass("show");
								}, 1000);
							})

						});
	</script>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f5b6c107c52e63373c42ed42d662f260"></script>
	<script type="text/javascript" src="/main/weather.js"></script>



</body>
</html>