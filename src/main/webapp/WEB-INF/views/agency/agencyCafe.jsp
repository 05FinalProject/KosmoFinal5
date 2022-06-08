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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="/agency/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet" href="/agency/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="/agency/css/elegant-icons.css"
	type="text/css" />

<link rel="stylesheet" href="/agency/css/nice-select.css"
	type="text/css" />

<link rel="stylesheet" href="/agency/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet" href="/agency/css/jquery-ui.min.css"
	type="text/css" />
<link rel="stylesheet" href="/agency/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="/agency/css/slicknav.min.css"
	type="text/css" />
<link rel="stylesheet" href="/agency/css/style.css" type="text/css" />


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


<!-- 페이지 색깔 표시  ****************************************-->

<script type="text/javascript">
$(function(){
    var page = '${param.page}'
    $('.pagination').find('li').each(function(i,e){
       if(page == $(this).find('a').text()){
          $(this).addClass('active')
       }
       
    })
 })

</script>

<!-- 페이지 색깔 표시 끝 **************************************** -->

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
	border: 2px solid #F3E2A9;
	border-radius: 8px;
	padding: 10px 12px;
	font-size: 14px;
}

.search3 {
	position: absolute;
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




</style>
</head>

<%@include file="/WEB-INF/views/include/Header.jsp" %>

<body class="home page page-template-template-lana-editor">


	<!-- Listing Section Begin -->
	<section class="listing nice-scroll">

		<div class="search1 wh">
			<input class="search2" type="text" placeholder="검색"> <img
				class="search3 wh "
				src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

		</div>

		<input class="agencyAddress" value="${vo.agencyNum }" type="hidden" />
		<input class="agencyName" value="${vo.agencyName }" type="hidden" /> 
		<input class="agencyLat" value="${vo.agencyLat }" type="hidden" /> 
		<input class="agencyLon" value="${vo.agencyLon }" type="hidden" />
             
		<!--********** 정보기관 리스트 출력 *********************** -->
		<div class="listing__list">

			<c:forEach var="vo" items="${paging}">
				<!-- **** 1번째 테이블 *************************** -->
				<div class="listing__item">
					<!-- 여기에 img값 가지고와야함 동적으로 -->

				     
				     <div>
						<img id="agencyImage" class="listing__item__pic set-bg"
							src="${vo.agencyImage}" />
						<div class="listing__item__pic__btns">
							<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
								href="#"><span class="icon_heart_alt"></span></a>
						</div>
					</div>
					<div class="listing__item__text">


						<div class="listing__item__text__inside">
							<a href="/agency/agencyCafeDetail?agencyNum=${vo.agencyNum }"><h5>${vo.agencyName }</h5></a>
							<div class="listing__item__text__rating">
								<!-- 이쪽에 별 대신 맛평가 들어가야함-->
								<div class="listing__item__rating__star">
									<span class="icon_star"></span> <span class="icon_star"></span>
									<span class="icon_star"></span> <span class="icon_star"></span>
									<span class="icon_star-half_alt"></span>
								</div>
								<!-- 가격대 가지고와야함-->
							</div>
							<ul>
								<!--주소 이름 가지고와야함-->
								<li><span class="icon_pin_alt"></span> ${vo.agencyAddress }</li>
								<li><span class="icon_phone"></span> ${vo.agencyTel }</li>

							</ul>
						</div>


					</div>

				</div>
			</c:forEach>

		</div>

		<!-- ***********페이징 처리 ************************************************* -->
		<nav class="pagination" role="navigation">

			<div class="nav-links " >
				<c:set  var="recordsCnt" value="${count}" />
				<c:set  var="jspFile" value="agencyCafe?" />
				<c:set  var="perpage" value="16" />
			</div>

			<!-- include 페이징  jsp파일  -->
			<%@include file="/WEB-INF/views/include/paging.jsp"%>
		</nav>

		<!-- ************ 페이징 처리 끝 *************************** -->

	</section>
<!--  Section End -->



	<!--카카오 지도 연결-->
	<!--******** Map Begin *******************************************-->
	<div class="listing__map">
		<div id="map" style="width: 100%; height: 52em"></div>
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
	<!--  <script src="/agency/js/main.js"></script >-->

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
	<script src="https://kit.fontawesome.com/8eb5905426.js"
		crossorigin="anonymous"></script>

	<!--************ 카카오 지도 띄우기 **********************************************************-->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a0a025e110dde0902210e297400a7be&libraries=services"></script>

	<script>
		var mapContainer = document.getElementById("map");
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3, // 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption);

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다
		if (navigator.geolocation) {
			// GeoLocation을 이용해서 현재 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {
				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
				console.log("myLat " + lat);
				console.log("myLon " + lon);
				$("#myLat").val(lat);
				$("#myLon").val(lon);
				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);
			});

		} else {
			// HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = "geolocation을 사용할수 없어요..";

			displayMarker(locPosition, message);
		}
		
		navigator.geolocation.getCurrentPosition(function(position) { // 좌표추출
			var geocoder = new kakao.maps.services.Geocoder();

			let callback = function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					let loc = result[0].address_name; // 좌표를 지역이름으로 변경
					$("#myLocation").val(loc);

				}
			};

			geocoder.coord2RegionCode(position.coords.longitude,
					position.coords.latitude, callback); // 현재위치 좌표 가져오기
		});

		var geocoder = new daum.maps.services.Geocoder();

		var listData = [];
		var listShop = [];
		var listLat = [];
		var listLon = [];
		var listpage = [];

		//DB에 있는 shopAdress가 들어옴
		$(".agencyAddress").each(function name(params) {
			var agencyName = $(this).text();

			listData.push(agencyName);
			console.log(listData)

		});

		//DB에 있는 shopTitle이 들어옴
		$(".agencyName").each(function name(params) {
			var agencyName = $(this).html();

			listShop.push(agencyName);
			console.log(listShop)
		});

		//DB에 있는 shopLat이 들어옴
		$(".agencyLat").each(function name(params) {
			var agencyLat = $(this).val();

			listLat.push(agencyLat);
			console.log(listLat)
		});

		//DB에 있는 shopLon이 들어옴
		$(".agencyLon").each(function name(params) {
			var agencyLon = $(this).val();

			listLon.push(agencyLon);
			console.log(listLon)
		});
		
		//db에 있는 페이지 들어옴
		$(".page").each(function name(params) {
			var page = $(this).val();

			listpage.push(page);
		});

		
		listData.forEach(function(addr, index) {geocoder.addressSearch( 
									addr,
									function(result, status) {
										if (status === daum.maps.services.Status.OK) {
											// var markerImage = new kakao.maps.MarkerImage(
											//   imageSrc,
											//   imageSize,
											//   imageOption
											// );
											var coords = new daum.maps.LatLng(
													result[0].y, result[0].x);

											console.log(result)
											console.log(result[0].y);
											var marker = new daum.maps.Marker({
												map : map,
												position : coords,
											//image: markerImage,
											});
											

											map.setCenter(coords);

											// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
											var content = '<div class="customoverlay">'
													+ '  <a href="https://map.kakao.com/link/map/'
              +listShop[index]+','+listLat[index]+','+listLon[index]+'">'
													+ '    <span class="title">'
													+ listShop[index]
													+ "</span>"
													+ "  </a>"
													+ "</div>";

											var position = new kakao.maps.LatLng(
													result[0].y, result[0].x);
											// 커스텀 오버레이를 생성합니다
											var customOverlay = new kakao.maps.CustomOverlay(
													{
														map : map,
														position : position,
														content : content,
														yAnchor : 0.2,
													});
										}
									});
				});
	</script>


<!--**************** 검색기능 처리 ************************* -->

	<script type="text/javascript">
		$('.search3')
				.click(
						function() {

							$
									.ajax({
										url : '/api/agencyCafeSearch',
										data : {
											agencyName : $('.search2').val()
										},
										type : 'get',
										success : function(data) {

											$('.listing__list').empty()
											data
													.forEach(function(d) {
														var number = d.agencyNum
														$('.listing__list')
																.append(
																		'<div class="listing__item"><div>'
																				+ '<img id="agencyImage" class="listing__item__pic set-bg" src="'+ d.agencyImage +'" />'
																				+ ' <div class="listing__item__pic__btns">'
																				+ '  <a href="#"><span class="icon_zoom-in_alt"></span></a>'
																				+ ' <a href="#"><span class="icon_heart_alt"></span></a>'
																				+ '</div></div>'
																				+ '<div class="listing__item__text">'
																				+ ' <div class="listing__item__text__inside">'
																				+ '  <a href="/agency/agencyCafeDetail?agencyNum='
																				+ d.agencyNum
																				+ '"><h5>'
																				+ d.agencyName
																				+ '</h5></a>'
																				+ ' <div class="listing__item__text__rating">'
																				+ '  <div class="listing__item__rating__star">'
																				+ '   <span class="icon_star"></span>'
																				+ '  <span class="icon_star"></span>'
																				+ ' <span class="icon_star"></span>'
																				+ ' <span class="icon_star"></span>'
																				+ ' <span class="icon_star-half_alt"></span>'
																				+ '</div> </div><ul>'
																				+ '<li><span class="icon_pin_alt"></span>'
																				+ d.agencyAddress
																				+ '</li>'
																				+ '<li><span class="icon_phone"></span>'
																				+ d.agencyTel
																				+ '</li>'
																				+ '</ul></div></div></div>')
													})

										}
									})

						})
						
	</script>

	<!--**** 검색기능끝 *************************  -->
</body>
</html>
