<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>너와 함개</title>
    

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" id="montserrat-css"
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

    <link rel="stylesheet" href="/css/HeadFootPage.css" type="text/css">
    
    <style type="text/css">
    .star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 1.5rem;
  line-height: 1.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2.3px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}
    
    
    .swiper-slide {
    border: 1px solid #F3E2A9;
    }
    
    
    </style>
    
    
</head>




<body class="home page page-template-template-lana-editor">



<header class="header headColor lana-full-bg-image-golden-large-sitting-dog-body-indoor d-flex flex-column"
        id="slider-header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-transparent" id="lana-pet-main-navbar">
        <a class="navbar-brand" href="#">
            <img class="navbar-logo mainLogo mx-auto" src="/img/WithYouLogo.png" alt="Navbar Logo">
        </a>
     
        <div><img src="/img/WithYouTitle.png" class="mainTitle mx-auto"/></div>
        <div class="toggler-buttons d-flex flex-fill justify-content-end">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#lana-navbar"
                    aria-controls="lana-navbar" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars fa-lg fa-fw text-light"></i>
            </button>
        </div>
            <!--상단 Nav bar 대 카테고리-->
        <div class="collapse navbar-collapse" id="lana-navbar">
            <ul class="navbar-nav mx-auto bigCate">
                <li class="nav-item comu">
                    <span class="nav-link"><span id="comu">커뮤니티</span></span>
                </li>
                <li class="nav-item organi">
                    <span class="nav-link"><span id="organi">기관</span></span>
                </li>
                <li class="nav-item info">
                    <span class="nav-link"><span id="info">정보나눔</span></span>
                </li>
            </ul>
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">날씨 적용할 칸</a>
                </li>
            </ul>
            <!--íìê°ì ë²í¼-->
            <div class="button-nav-widget d-xl-inline-flex">
                <ul class="nav button-nav">
                    <li class="nav-item">
                        <a href="#" class="btn joinbutton">
                            <img src="/img/Guest.png" class="join">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
                        <!-- 상단 Nav bar 대 카테고리 끝-->


            <!-- 상단 Nav bar 서브 카테고리 -->
                                <!-- 서브 Nav bar 카테고리 - 커뮤니티 -->
                <div class="subCate comunity">
                    <nav class="navbar navbar-expand-lg navbar-dark" id="lana-pet-main-navbar">
                        <div class="collapse navbar-collapse" id="lana-navbar">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">일상공유</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">자원봉사</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">가정분양</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">물품나눔</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">행사</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">산책로</span></a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                                <!-- 서브 Nav bar 카테고리 - 기관 -->
                <div class="subCate organization off">
                    <nav class="navbar navbar-expand-lg navbar-dark" id="lana-pet-main-navbar">
                        <div class="collapse navbar-collapse" id="lana-navbar">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">훈련소</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">보호소</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">동물병원</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">애견호텔</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">유치원</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">장례식장</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">공원</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">애견카페</span></a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                                <!-- 서브 Nav bar 카테고리 - 정보나눔 -->
                <div class="subCate information off">
                    <nav class="navbar navbar-expand-lg navbar-dark" id="lana-pet-main-navbar">
                        <div class="collapse navbar-collapse" id="lana-navbar">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">백과사전</span></a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                                <!-- 서브 Nav bar 카테고리 - 마이페이지 -->
                <div class="subCate myPage off">
                    <nav class="navbar navbar-expand-lg navbar-dark" id="lana-pet-main-navbar">
                        <div class="collapse navbar-collapse" id="lana-navbar">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="subFont">프로필</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">나의 게시글</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">반려동물</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">펫친관리</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">펫친찾기</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link sub" href="#"><span class="subFont">나의 산책로</span></a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                
                
<main class="main">
    <div id="post-1" class="lana_pet type-lana_pet post-1">
        <div class="container post-container">
            <div class="row justify-content-center post-row bg-white no-gutters">
                <div class="col-12 post-thumbnail-col">
                    <div class="swiper-container gallery-image">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="../pictures/placeholder/1920x1080.svg" class="image-link">
                                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg"
                                         alt="Pet">
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="../pictures/placeholder/1920x1080.svg" class="image-link">
                                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg"
                                         alt="Pet">
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="../pictures/placeholder/1920x1080.svg" class="image-link">
                                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg"
                                         alt="Pet">
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="../pictures/placeholder/1920x1080.svg" class="image-link">
                                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg"
                                         alt="Pet">
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="../pictures/placeholder/1920x1080.svg" class="image-link">
                                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg"
                                         alt="Pet">
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="../pictures/placeholder/1920x1080.svg" class="image-link">
                                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg"
                                         alt="Pet">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-10 col-lg-8 post-thumbnail-col mt-3">
                    <div class="swiper-container gallery-thumbnails">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img class="img-fluid post-thumbnail" src="../pictures/placeholder/530x400.svg"
                                     alt="Pet">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid post-thumbnail" src="../pictures/placeholder/530x400.svg"
                                     alt="Pet">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid post-thumbnail" src="../pictures/placeholder/530x400.svg"
                                     alt="Pet">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid post-thumbnail" src="../pictures/placeholder/530x400.svg"
                                     alt="Pet">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid post-thumbnail" src="../pictures/placeholder/530x400.svg"
                                     alt="Pet">
                            </div>
                            <div class="swiper-slide">
                                <img class="img-fluid post-thumbnail" src="../pictures/placeholder/530x400.svg"
                                     alt="Pet">
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-next swiper-button-outside-md"></div>
                    <div class="swiper-button-prev swiper-button-outside-md"></div>
                </div>
                <div class="col-12 col-md-10 col-lg-8 post-col">
                    <div class="post-title">
                        호텔이름
                    </div>
                    <div class="d-md-flex justify-content-between align-items-center post-meta post-meta-top">
                        <div class="age-meta">
                            <span class="age-text">지역</span>
                        </div>
                       
                    </div>
                    <div class="post-content">
                        <p>
                            내용
                        </p>
                        
                    </div>

                </div>
            </div>
        </div>
  </div>

  <!--****************리뷰 작성 띄워주기 테이블 ****************************************-->      
       <div class="container comments-container bg-white">
            <div class="row justify-content-center comments-row no-gutters">
                <div class="col-12 col-sm-11 col-md-10 col-lg-8">
                    <h4 class="comments-title font-weight-bold">
                        방문자 리뷰 <span class="comments-number"></span>
                    </h4>

    
     <!-- *********리뷰 작성 1번째 테이블 시작 *******************************************************-->
                           
             
                      <ul class="comment-list list-unstyled">
                        <li class="media">
                            <img class="avatar photo rounded-circle mr-2 mr-sm-3 mr-md-4"
                                 src="../pictures/placeholder/65x65.svg" alt="Avatar">
                          <div>
                              <p>
                                  리뷰 작성
                              </p>
                              
     <!-- ******** 리뷰 별점 시작 *********************************************-->                         
                              <div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">★</label>
	<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">★</label>
	<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">★</label>
	<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">★</label>
	<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
	<label for="1-star" class="star">★</label>
</div>

    <!-- ******** 리뷰 별점 끝 *********************************************-->     
                              
                          </div>
                           </li>
                        </ul>
                     
                     
                                    

    <!-- ******** 리뷰 별점 끝 *********************************************-->     
                                
                                 
                             <!--  
                          
                           -->    
                        

 <!-- 리뷰 1번째 테이블 끝 **************************************************** -->

   
 <!-- ************* 리뷰 2번째 테이블 시작 *************************************** -->
                        
                         <ul class="comment-list list-unstyled">
                        <li class="media">
                            <img class="avatar photo rounded-circle mr-2 mr-sm-3 mr-md-4"
                                 src="../pictures/placeholder/65x65.svg" alt="Avatar">
                          <div>
                              <p>
                                  리뷰 작성
                              </p>
                              
     <!-- ******** 리뷰 별점 시작 *********************************************-->                         
                              <div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">★</label>
	<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">★</label>
	<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">★</label>
	<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">★</label>
	<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
	<label for="1-star" class="star">★</label>
</div>

    <!-- ******** 리뷰 별점 끝 *********************************************-->     
                              
                          </div>
                           </li>
                        </ul>
                        
   <!--  *********** 리뷰 2번째 테이블 끝 ********************************** --> 
 
    </div>
    </div>
    
    <!--***************** 리뷰 작성   *************************************-->  
        <div id="adopt-a-pet" class="container adopt-container">
            <div class="row justify-content-center adopt-row bg-white no-gutters">
                <div class="col-12 col-md-10 col-lg-8">
                    <h4 class="font-weight-bold mb-4">리뷰 작성</h4>
                    <form id="adoptform" class="adopt-form">
                        <div class="form-row">
                          
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control" placeholder="아이디" aria-required="true"
                                       aria-label="Email" required="required">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="제목" aria-required="true"
                                       aria-label="Subject" required="required">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col">
                                    <textarea class="form-control" name="message" rows="8" placeholder="내용"
                                              aria-required="true" aria-label="Message" required="required"></textarea>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <input name="submit" type="submit" id="submit"
                                       class="btn btn-primary btn-lg text-uppercase font-weight-bold w-15x"
                                       value="작성">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
     
        <nav class="navigation pagination justify-content-between text-uppercase" role="navigation">
                    <a class="prev disabled" href="#">
                        Prev
                    </a>
                    <div class="nav-links">
                        <ul class="page-numbers">
                            <li><span aria-current="page" class="page-numbers current">1</span></li>
                            <li><a class="page-numbers" href="#">2</a></li>
                            <li><span class="page-numbers dots">…</span></li>
                            <li><a class="page-numbers" href="#">4</a></li>
                        </ul>
                    </div>
                    <a class="next" href="#">
                        Next
                    </a>
                </nav>
    
    </div>
    
</main>
    

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="/js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a0a025e110dde0902210e297400a7be"></script>
<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>

<script type="text/javascript">

    //eq(0) = ì»¤ë®¤ëí°
	$(document).ready(function(){
        $(".bigCate li.comu").click(function(){
            $(".comunity").removeClass("off");
			$(".organization").addClass("off");
            $(".information").addClass("off");
            $(".myPage").addClass("off");
		});

		$(".bigCate li.organi").click(function(){
            $(".organization").removeClass("off");
			$(".comunity").addClass("off");
            $(".information").addClass("off");
            $(".myPage").addClass("off");
		});

        $(".bigCate li.info").click(function(){
            $(".information").removeClass("off");
			$(".comunity").addClass("off");
            $(".organization").addClass("off");
            $(".myPage").addClass("off");
		});

        $(".bigCate li.myPage").click(function(){
            $(".myPage").removeClass("off");
			$(".comunity").addClass("off");
            $(".information").addClass("off");
            $(".myPage").addClass("off");
		});

	});
</script>


<body class="home page page-template-template-lana-editor">

<footer class="footer bg-dark text-white">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav"><img href="#" src="/img/WithYouTitle.png" class="footerLogo" >
            </ul>
            </div>
            <div class="col-md-4">
                <ul class="nav justify-content-center">
                    <li class="nav-item footerFont"><p class="nav-link">주소 : 서울특별시 금천구 가산디지털2로 123 2차) 월드 메르디앙</p></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="nav justify-content-center">
                    <li class="nav-item footerFont"><p class="nav-link">고객센터: 02-2005-8523</p></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="nav justify-content-center">
                    <li class="nav-item footerFont"><p class="nav-link">이메일: swkosmo@daum.net</p></li>
                </ul>
            </div>
        </div>
    </div>
</footer>


</body>
</html>