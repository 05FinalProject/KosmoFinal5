<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너와 함개</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--    <link rel="stylesheet" id="montserrat-css"
          href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link rel="stylesheet" id="open-sans-css"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i">

    <link rel="stylesheet" id="animate-css" href="/css/animate.min.css?ver=3.7.2" type="text/css" media="all">
    <link rel="stylesheet" id="font-awesome-css" href="/css/font-awesome.min.css?ver=5.15.4" type="text/css"
          media="all">
    <link rel="stylesheet" id="bootstrap-css" href="/css/bootstrap.min.css?ver=4.6.0" type="text/css" media="all">
    <link rel="stylesheet" id="smartmenus-bootstrap-css" href="/css/smartmenus-bootstrap.min.css?ver=1.1.1"
          type="text/css" media="all">
    <link rel="stylesheet" id="swiper-css" href="/css/swiper.min.css?ver=4.5.3" type="text/css" media="all">
    <link rel="stylesheet" id="magnific-popup-css" href="/css/magnific-popup.min.css?ver=1.1.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-icon-css" href="/css/lana-pet-icon.min.css?ver=1.0.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-theme-css" href="/css/lana-pet-theme.min.css?ver=1.0.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-print-css" href="/css/lana-pet-print.min.css?ver=1.0.0" type="text/css"
          media="print">

    <link rel="stylesheet" href="css/mainPage.css" type="text/css"> -->

<!-- 템플릿2 -->
<!-- Links of CSS files -->
<link rel="stylesheet" href="/community/css/bootstrap.min.css">
<link rel="stylesheet" href="/community/css/animate.min.css">
<link rel="stylesheet" href="/community/css/remixicon.css">
<link rel="stylesheet" href="/community/css/flaticon.css">
<link rel="stylesheet" href="/community/css/jquery-ui.min.css">
<link rel="stylesheet" href="/community/css/magnific-popup.min.css">
<link rel="stylesheet" href="/community/css/simplebar.min.css">
<link rel="stylesheet" href="/community/css/metismenu.min.css">
<link rel="stylesheet" href="/community/css/owl.carousel.min.css">
<link rel="stylesheet" href="/community/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/community/css/style.css">
<link rel="stylesheet" href="/community/css/responsive.css">



<!-- <link rel="icon" type="image/png" href="/community/images/favicon.png"> -->

<style type="text/css">
#total {
	diplay: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	margin: 50px;
}

#comment-insert-btn {
	background: #f8b03a;
	color: white;
	float: right;
	border: #f8b03a;
}

#siren {
	background: none;
	width: 40px;
	border: none;
	float: right;
}

#etc {
	margin-top: 20px;
}

.write-comment {
	margin-top: 30px;
}

information-content {
	margin-top: 30px;
}
</style>

</head>


<%@include file="../Header.jsp"%>

<body>
	<div id="total">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-12">
				<div class="pet-details-image">
					<!-- 사용자가 첨부한 이미지 들어오는 자리 -->
					<!-- <img src="../../img/emptyHeart.png"> -->
				</div>
			</div>
			<div class="col-lg-6 col-md-12">
				<div class="products-details-content">
					<div id="userProfile">
						<h3>작성자 닉네임</h3>
						<!-- <p class="location">
							<i class="ri-map-pin-line"></i> 4825 Poplar Lane Miami, FL
						</p> -->
						<hr>
					</div>

					<div>

						<p>Curabitur arcu erat accumsan id imperdiet et porttitor at
							sem vivamus magna justo lacinia eget consectetur sed convallis at
							tellus.</p>
						<p>Proin eget tortor risus donec rutrum congue leo eget
							malesuada mauris blandit aliquet elit eget tincidunt nibh
							pulvinar curabitur arcu erat accumsan id imperdiet et porttitor
							at sem.</p>

						<div id="etc">
							<small> <span>작성일 표시</span>
							</small>
							<button id="siren">
								<img src="../../img/siren.png">
							</button>
						</div>
					</div>
					<hr>

					<!-- 댓글리스트 출력 -->
					<div class="seller-information">
						<div class="information-content">
							<img src="/community/images/user/user-25.jpg"
								class="rounded-circle" alt="image">
							<h6>댓글 작성자 닉네임</h6>
							<p>댓글 내용 출력</p>

						</div>
					</div>

					<div class="write-comment">
						<form>
						<div>
							<label></label> 
							<input type="text" class="form-control"
								placeholder="댓글을 입력해주세요">
							<span><button type="submit" id="comment-insert-btn">등록</button></span>
							</div>
						</form>
						</div>
					</div>

					

				</div>
			</div>
		</div>
	</div>

	<%@include file="../Footer.jsp"%>

</body>

<!-- <script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="/js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
 -->

<!-- 템플릿2 -->
<!-- Links of JS files -->
<script src="/community/js/jquery.min.js"></script>
<script src="/community/js/bootstrap.bundle.min.js"></script>
<script src="/community/js/jquery.magnific-popup.min.js"></script>
<script src="/community/js/jquery-ui.min.js"></script>
<script src="/community/js/simplebar.min.js"></script>
<script src="/community/js/metismenu.min.js"></script>
<script src="/community/js/owl.carousel.min.js"></script>
<script src="/community/js/wow.min.js"></script>
<script src="/community/js/main.js"></script>

</html>