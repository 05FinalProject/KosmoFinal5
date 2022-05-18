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
	height: 70%;
	width: 70%;
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




	<main class="main">
		<!-- 메인페이지 이벤트 배너 -->
		<div class="container">
		<%@include file="./Header.jsp"%>
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
							<div>
								<img src="/img/mainpage/premium-icon-hotel-3009487.png" />
							</div>
							<div class="agency-name mt-2">호텔</div>
						</li>
						<li>
							<div>
								<img src="/img/mainpage/premium-icon-cafe-3361447.png" />
							</div>
							<div class="agency-name mt-2">카페</div>
						</li>
						<li>
							<div>
								<img
									src="/img/mainpage/premium-icon-hospital-building-2749678.png" />
							</div>
							<div class="agency-name mt-2">병원</div>
						</li>
						<li>
							<div>
								<img src="/img/mainpage/premium-icon-animal-shelter-5871573.png" />
							</div>
							<div class="agency-name mt-2">보호소</div>
						</li>
						<li>
							<div>
								<img src="/img/mainpage/free-icon-death-3455284.png" />
							</div>
							<div class="agency-name mt-2">장례식장</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- 일상공유 인기글 -->
		<div id="stories-container"
			class="container-fluid bg-light-blue section-py--large">
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
								<div class="swiper-slide">
									<div
										class="lana_story type-lana_story card story-slide-card mx-0 mx-md-3 h-100"
										data-scroll-animate="fadeIn">
										<div class="card-body">
											<div class="media">
												<img src="/pictures/placeholder/100x100.svg"
													class="img-fluid rounded-circle" alt="Pet">
												<div class="media-body align-self-center">
													<h5 class="post-title card-title">회원 닉네임</h5>
												</div>
											</div>
											<img src="/img/testimg.jpg"
												style="width: 240px; height: 240px;" />
											<p class="post-text card-text">우리갱얼지 귀엽죵</p>
										</div>
									</div>
								</div>

								<div class="swiper-slide">
									<div
										class="lana_story type-lana_story card story-slide-card mx-0 mx-md-3 h-100"
										data-scroll-animate="fadeIn">
										<div class="card-body">
											<div class="media">
												<img src="/pictures/placeholder/100x100.svg"
													class="img-fluid rounded-circle" alt="Pet">
												<div class="media-body align-self-center">
													<h5 class="post-title card-title">회원 닉네임</h5>
												</div>
											</div>
											<img src="/img/testimg.jpg"
												style="width: 240px; height: 240px;" />
											<p class="post-text card-text">우리갱얼지 귀엽죵</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div
										class="lana_story type-lana_story card story-slide-card mx-0 mx-md-3 h-100"
										data-scroll-animate="fadeIn">
										<div class="card-body">
											<div class="media">
												<img src="/pictures/placeholder/100x100.svg"
													class="img-fluid rounded-circle" alt="Pet">
												<div class="media-body align-self-center">
													<h5 class="post-title card-title">회원 닉네임</h5>
												</div>
											</div>
											<img src="/img/testimg.jpg"
												style="width: 240px; height: 240px;" />
											<p class="post-text card-text">우리갱얼지 귀엽죵</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div
										class="lana_story type-lana_story card story-slide-card mx-0 mx-md-3 h-100"
										data-scroll-animate="fadeIn">
										<div class="card-body">
											<div class="media">
												<img src="/pictures/placeholder/100x100.svg"
													class="img-fluid rounded-circle" alt="Pet">
												<div class="media-body align-self-center">
													<h5 class="post-title card-title">회원 닉네임</h5>
												</div>
											</div>
											<img src="/img/testimg.jpg"
												style="width: 240px; height: 240px;" />
											<p class="post-text card-text">우리갱얼지 귀엽죵</p>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div
										class="lana_story type-lana_story card story-slide-card mx-0 mx-md-3 h-100"
										data-scroll-animate="fadeIn">
										<div class="card-body">
											<div class="media">
												<img src="/pictures/placeholder/100x100.svg"
													class="img-fluid rounded-circle" alt="Pet">
												<div class="media-body align-self-center">
													<h5 class="post-title card-title">회원 닉네임</h5>
												</div>
											</div>
											<img src="/img/testimg.jpg"
												style="width: 240px; height: 240px;" />
											<p class="post-text card-text">우리갱얼지 귀엽죵</p>
										</div>
									</div>
								</div>

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



		<!-- 반려견에 대한 설명(가장 등록이 많이 된 반려견 6개 띄워주기) -->
		<div id="gallery-container" class="container section-py--large">
			<div class="row justify-content-center">
				<div class="col-12 col-md-10 col-lg-6 text-center">
					<h1 class="mb-4 font-weight-bold" data-scroll-animate="fadeInDown">인기
						많은 반려견</h1>
					<p data-scroll-animate="fadeInUp">가장 많이 등록된 반려견이에요!</p>
					<div class="lana-hr lana-hr-4 border-primary mt-4"
						data-scroll-animate="zoomIn"></div>
				</div>
			</div>
			<div class="row text-center my-5 mfp-gallery">
				<div class="col-12 col-sm-6 col-lg-4 my-3">
					<a href="/pictures/placeholder/1920x1080.svg"
						class="lana-img-overlay image-link text-white"
						data-scroll-animate="comeInRight"> <img
						src="/pictures/placeholder/640x430.svg"
						class="mfp-image img-fluid" alt="Pet">
						<div class="container overlay-content">
							<div class="row h-100">
								<div class="col-12 align-self-end p-5">
									<div class="d-flex justify-content-between">
										<span class="title h3">Jumbo</span> <i
											class="fas fa-search-plus fa-2x align-middle"></i>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-12 col-sm-6 col-lg-4 my-3">
					<a href="pictures/placeholder/1920x1080.svg"
						class="lana-img-overlay image-link text-white"
						data-scroll-animate="comeInUp"> <img
						src="/pictures/placeholder/640x430.svg"
						class="mfp-image img-fluid" alt="Pet">
						<div class="container overlay-content">
							<div class="row h-100">
								<div class="col-12 align-self-end p-5">
									<div class="d-flex justify-content-between">
										<span class="title h3">Jack</span> <i
											class="fas fa-search-plus fa-2x align-middle"></i>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-12 col-sm-6 col-lg-4 my-3">
					<a href="/pictures/placeholder/1920x1080.svg"
						class="lana-img-overlay image-link text-white"
						data-scroll-animate="comeInLeft"> <img
						src="/pictures/placeholder/640x430.svg"
						class="mfp-image img-fluid" alt="Pet">
						<div class="container overlay-content">
							<div class="row h-100">
								<div class="col-12 align-self-end p-5">
									<div class="d-flex justify-content-between">
										<span class="title h3">Bo</span> <i
											class="fas fa-search-plus fa-2x align-middle"></i>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-12 col-sm-6 col-lg-4 my-3">
					<a href="/pictures/placeholder/1920x1080.svg"
						class="lana-img-overlay image-link text-white"
						data-scroll-animate="comeInRight"> <img
						src="/pictures/placeholder/640x430.svg"
						class="mfp-image img-fluid" alt="Pet">
						<div class="container overlay-content">
							<div class="row h-100">
								<div class="col-12 align-self-end p-5">
									<div class="d-flex justify-content-between">
										<span class="title h3">Rusty</span> <i
											class="fas fa-search-plus fa-2x align-middle"></i>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-12 col-sm-6 col-lg-4 my-3">
					<a href="/pictures/placeholder/1920x1080.svg"
						class="lana-img-overlay image-link text-white"
						data-scroll-animate="comeInDown"> <img
						src="/pictures/placeholder/640x430.svg"
						class="mfp-image img-fluid" alt="Pet">
						<div class="container overlay-content">
							<div class="row h-100">
								<div class="col-12 align-self-end p-5">
									<div class="d-flex justify-content-between">
										<span class="title h3">Linda</span> <i
											class="fas fa-search-plus fa-2x align-middle"></i>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-12 col-sm-6 col-lg-4 my-3">
					<a href="/pictures/placeholder/1920x1080.svg"
						class="lana-img-overlay image-link text-white"
						data-scroll-animate="comeInLeft"> <img
						src="/pictures/placeholder/640x430.svg"
						class="mfp-image img-fluid" alt="Pet">
						<div class="container overlay-content">
							<div class="row h-100">
								<div class="col-12 align-self-end p-5">
									<div class="d-flex justify-content-between">
										<span class="title h3">Shadow</span> <i
											class="fas fa-search-plus fa-2x align-middle"></i>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		<!-- 	<div class="row">
				<div class="col-12 text-center">
					<a href="#"
						class="btn btn-primary btn-lg text-uppercase font-weight-bold w-15x">Show
						More</a>
				</div>
			</div> -->
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



</body>
</html>