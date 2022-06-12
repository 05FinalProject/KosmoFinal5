<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>너와 함개</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" id="montserrat-css"
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link rel="stylesheet" id="open-sans-css"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i">
<link rel="stylesheet" id="animate-css"
	href="/css/animate.min.css?ver=3.7.2" type="text/css" media="all">
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

<link rel="stylesheet" href="css/mainPage.css" type="text/css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css" />
<link rel="stylesheet" href="/css/bxslider.css" type="text/css">


<style>
.bx_slider {
	text-align: center;
}

.bx_slider img {
	width: 100%;
}

#wrapper {
	width: 100%;
	margin: 0 auto;
}

.agency {
	text-align: center;
}

.agency img {
	height: auto;
	width: 70px;
}

.agency li {
	list-style-type: none;
	margin-right: 2em; margin-left : 2em;
	display: inline-block;
	margin-left: 2em;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script>
	$(document).ready(function() {
		$(".bx_slider").bxSlider({
			slideWidth : 2500,
			auto : true,
			minSlides : 1,
			maxSlides : 1,
			controls : false,
			pager : false,
			speed : 500,
		}); /* 슬라이더 클래스 또는 아이디 입력 */
	});
</script>
</head>
<body class="home page page-template-template-lana-editor">



<%@include file="./Header.jsp"%>
	<main class="main">
		<!-- 메인페이지 이벤트 배너 -->
		<div class="container">
		
			<div id="wrapper" class="mt-3">
				<div class="bx_slider">
					<div>
						<img src="/img/mainpage/event_mobile_banner_1644203927.png"
							alt="배너1" />
					</div>
					<div>
						<img src="/img/mainpage/event_mobile_banner_1646369654.png"
							alt="배너2" />
					</div>
					<div>
						<img src="/img/mainpage/event_mobile_banner_1648689579.png"
							alt="베너3" />
					</div>
					<div>
						<img src="/img/mainpage/event_mobile_banner_1651036825.png"
							alt="배너4" />
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="agency">
				<nav>
					<ul>
						<li>
						<a href="/agency/agencyHotel">
							<div>
								<img src="/img/mainpage/premium-icon-hotel-3009487.png" />
							</div>
							<div class="agency-name mt-2">애견호텔</div>
							</a>
						</li>
						<li>
							<a href="/agency/agencyCafe">
							<div>
								<img src="/img/mainpage/premium-icon-cafe-3361447.png" />
							</div>
							<div class="agency-name mt-2">애견카페</div>
							</a>
						</li>
						<li>
						<a href="/agency/agencyHospital">
							<div>
								<img
									src="/img/mainpage/premium-icon-hospital-building-2749678.png" />
							</div>
							<div class="agency-name mt-2">동물병원</div>
							</a>
						</li>
						<li>
							<a href="/agency/agencyShelter">
							<div>
								<img src="/img/mainpage/premium-icon-animal-shelter-5871573.png" />
							</div>
							<div class="agency-name mt-2">보호소</div>
							</a>
						</li>
						<li>
						<a href="/agency/agencyHall">
							<div>
								<img src="/img/mainpage/free-icon-death-3455284.png" />
							</div>
							<div class="agency-name mt-2">장례식장</div>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- 일상공유 인기글 -->
		<div id="stories-container"
			class="container-fluid section-py--large">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-12 col-md-10 col-lg-6 text-center">
						<h1 class="mb-4 font-weight-bold" data-scroll-animate="fadeInDown">인기
							게시글</h1>

						<p data-scroll-animate="fadeInUp">너와 함개하는 커뮤니티에 오신 것을 환영합니다.</p>
						<div class="lana-hr lana-hr-4 border-primary mt-4"
							data-scroll-animate="zoomIn"></div>
					</div>
				</div>

				<!-- ì¸ê¸°ê¸ ë¸ì¶-->
				<div class="row mt-5">
					<div class="col-12 px-0">
						<div
							class="stories-carousel swiper-container swiper-container-items h-100">
							<div class="swiper-wrapper">
								<!-- 슬라이드  -->
								<c:forEach var="vo" items="${MostlikeIt }" >
								<div class="swiper-slide">
									<div
										class="lana_story type-lana_story card story-slide-card mx-0 mx-md-3 h-100"
										data-scroll-animate="fadeIn">
										<div class="card-body" style="text-align: center;">
											<div class="media">
												<img src="/${vo.userImg }"
													class="img-fluid rounded-circle" alt="Pet">
												<div class="media-body align-self-center">
													<h5 class="post-title card-title">${vo.nickName }</h5>
												</div>
											</div>
											<img src="/img/communityImg/${vo.img }"
												style="width: 240px; height: 240px;" />
											<p class="post-text card-text">${vo.title }</p>
										</div>
									</div>
								</div>

								</c:forEach>
								
								
								

							</div>
							<div class="swiper-pagination" data-scroll-animate="fadeInDown"></div>
							<div class="swiper-button-next swiper-button-arrow"
								data-scroll-animate="fadeInLeft"></div>
							<div class="swiper-button-prev swiper-button-arrow"
								data-scroll-animate="fadeInRight"></div>
						</div>
					</div>
				</div>
			</div>
		</div>





	</main>
	<%@include file="./Footer.jsp"%>


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
	<script type="text/javascript" src="/js/bxslider.js"></script>
	<script type="text/javascript">
	$('#unreadMessage').text(${unreadMessage})
	</script>


</body>
</html>