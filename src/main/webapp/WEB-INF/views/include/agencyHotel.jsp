<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
   <!-- <meta name="description" content="Directing Template" />-->
    <meta name="keywords" content="Directing, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>너와 함개</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
      rel="stylesheet"
    />

    <!-- Css Styles -->
    <link
      rel="stylesheet"
      href="/agency/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/font-awesome.min.css"
      type="text/css"
    />
      <link
      rel="stylesheet"
      href="/agency/css/elegant-icons.css"
      type="text/css"
    />
    
    <link
      rel="stylesheet"
      href="/agency/css/nice-select.css"
      type="text/css"
    />
  
    <link
      rel="stylesheet"
      href="/agency/css/magnific-popup.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/jquery-ui.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/owl.carousel.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/slicknav.min.css"
      type="text/css"
    />
    <link rel="stylesheet" href="/agency/css/style.css" type="text/css" />
    
    
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

    <style>
      ul {
        list-style: none;
        padding-left: 0px;
      }
      
     
     .search1 {
  position: relative;
  width: 300px;
}

.search2 {
  width: 100%;
  border: 2px solid  #F3E2A9;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
}

.search3 {
  position : absolute;
  width: 17px;
  top: 10px;
  right: 12px;
  margin: 0;
}

#agencyImage {
	position: relative;
	width: 100%;
	height: 100%;
}

.wh {
	padding-top: 15px;
	padding-bottom: 15px;
}

/* .listing__item{
border: 1px solid #008000;
} */
     
   </style>
  </head>

<%@include file="./Header.jsp" %>
  
  <body class="home page page-template-template-lana-editor">
   
  <!-- Header Section Begin -->
  
    
  <!-- Header Section End -->
     
   
   <!-- Listing Section Begin -->
    <section class="listing nice-scroll">
    
  <div class="search1 wh" >
  <input class="search2" type="text" placeholder="검색">
  <img class="search3 wh" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
</div>
  
    
  <!--********** 정보기관 리스트 출력 *********************** -->
      <div class="listing__list">
      
       <c:forEach var="vo" items="${paging}">
  <!-- **** 1번째 테이블 *************************** -->    
        <div class="listing__item">
          <!-- 여기에 img값 가지고와야함 동적으로 -->
          
          
          <div
            class="listing__item__pic set-bg"
            data-setbg="${vo.agencyImage }">
            <div class="listing__item__pic__btns">
              <a href="#"><span class="icon_zoom-in_alt"></span></a>
              <a href="#"><span class="icon_heart_alt"></span></a>
            </div>
          </div>
          <div class="listing__item__text">
          
         
            <div class="listing__item__text__inside">
              <a href="/include/agencyHotelDetail?agencyNum=${vo.agencyNum }"><h5>${vo.agencyName }</h5></a>
              <div class="listing__item__text__rating">
                <!-- 이쪽에 별 대신 맛평가 들어가야함-->
                <div class="listing__item__rating__star">
                  <span class="icon_star"></span>
                  <span class="icon_star"></span>
                  <span class="icon_star"></span>
                  <span class="icon_star"></span>
                  <span class="icon_star-half_alt"></span>
                </div>
                <!-- 가격대 가지고와야함-->
                </div>
              <ul>
                <!--주소 이름 가지고와야함 ㅅㅂ-->
                <li><span class="icon_pin_alt"></span> ${vo.agencyAddress }</li>
                <li><span class="icon_phone"></span> ${vo.agencyTel }</li>
              </ul>
            </div>
           
          
          </div>
          
        </div>
 </c:forEach>
 
 </div>
      
      
      <nav class="pagination" role="navigation">

			<div class="nav-links">
				<c:set var="recordsCnt" value="${count}" />
				<c:set var="jspFile" value="agencyHotel?" />
				<c:set var="perpage" value="11" />
			</div>

			<!-- include 페이징  jsp파일  -->
			<%@include file="paging.jsp"%>
		</nav>
      
      
      
      
      
      
    </section>
    <!-- Listing Section End -->

   <!--카카오 지도 연결-->
    <!--******** Map Begin *******************************************-->
    <div class="listing__map">
      <div id="map" style="width: 100%; height: 60em"></div>
    </div>
    <!--****** Map End ***********************************************-->

    
    
    
    <!-- Js Plugins -->
    <script src="/agency/js/jquery-3.3.1.min.js"></script>
    <script src="/agency/js/bootstrap.min.js"></script>
    <script src="/agency/js/jquery.nice-select.min.js"></script>
    <script src="/agency/js/jquery-ui.min.js"></script>
    <script src="/agency/js/jquery.nicescroll.min.js"></script>
    <script src="/agency/js/jquery.barfiller.js"></script>
    <script src="/agency/js/jquery.magnific-popup.min.js"></script>
    <script src="/agency/js/jquery.slicknav.js"></script>
    <script src="/agency/js/owl.carousel.min.js"></script>
    <script src="/agency/js/main.js"></script>

    <!--직접 만든 js-->
    <script src="/agency/js/yang.js"></script>
    <script src="/agency/js/slide.js"></script>

    <!--카카오맵 출력하려면 필요한 키값-->
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef81fd1e646b0a15481c65c77c4029e6&libraries=services"
    ></script>
    <!--카카오 맵 js-->
    <script src="/agency/js/kakaoMap.js"></script>
    
    
    <script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="/js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
<script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
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

  <script>
      $("#filter-search").click(function name(params) {
        var regex = /[^0-9.;\-]/g;
        var result = $("#radius").val().replace(regex, "");
        console.log(result);
      });
    </script>

    <script>
      const slider = document.querySelector(".items");
      let isMouseDown = false;
      let startX, scrollLeft;

      slider.addEventListener("mousedown", (e) => {
        isMouseDown = true;
        slider.classList.add("active");

        startX = e.pageX - slider.offsetLeft;
        scrollLeft = slider.scrollLeft;
      });

      slider.addEventListener("mouseleave", () => {
        isMouseDown = false;
        slider.classList.remove("active");
      });

      slider.addEventListener("mouseup", () => {
        isMouseDown = false;
        slider.classList.remove("active");
      });

      slider.addEventListener("mousemove", (e) => {
        if (!isMouseDown) return;

        e.preventDefault();
        const x = e.pageX - slider.offsetLeft;
        const walk = (x - startX) * 1;
        slider.scrollLeft = scrollLeft - walk;
      });
    </script>
   </body>
 </html>
