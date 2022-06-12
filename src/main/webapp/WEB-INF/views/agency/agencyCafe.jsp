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


.customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}


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
	
	
    <!--카카오 맵 js-->
    <script src="/agency/js/kakaoMap.js"></script>
	
	

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
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a0a025e110dde0902210e297400a7be"></script>

	<script>
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(37.50212393, 127.0888401),
		level: 10
	};

	var map = new kakao.maps.Map(container, options);
	
	
	//-----------------------------------------------------------------
	let jsonDataMapList = ${mapList};
    let jsonObjectMapList = JSON.stringify(jsonDataMapList);
    let jDataMapList = JSON.parse(jsonObjectMapList);
    
    let MapListName = []; // 배열생성
    let MapListLon = [];
    let MapListLat = [];

    for (let i = 0; i < jDataMapList.length; i++) {
        let dMapList = jDataMapList[i];
        MapListName.push(dMapList.name);
        MapListLon.push(dMapList.lon);
        MapListLat.push(dMapList.lat);
    }

    var MapListArray = [];

    for (var i = 0; i < MapListName.length; i++){
        MapListArray.push ({title: MapListName[i], latlng: new kakao.maps.LatLng(MapListLat[i], MapListLon[i])})
    }

   var positions = MapListArray
	
    // 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new kakao.maps.Size(24, 35); 
	     
		var imageOption = {offset: new kakao.maps.Point(27, 69)};
		
	    // 마커 이미지를 생성합니다    
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption); 
	    markerPosition = new kakao.maps.LatLng(37.54699, 127.09598);
	    
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        position: positions[i].latlng, // 마커를 표시할 위치
	       // title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage, // 마커 이미지 
	      
	    });
	    
	    marker.setMap(map);

	    console.log( positions[i].latlng.Ma)
	    
	    var iwContent ='<div class="customoverlay">' +
	    '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
	    '    <span class="title">'+positions[i].title+'</span>' +
	    '  </a>' +
	    '</div>';
	    // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	      var iwPosition = new kakao.maps.LatLng(positions[i].latlng.Ma, positions[i].latlng.La); //인포윈도우 표시 위치입니다 */ 

	    
	    // 커스텀 오버레이를 생성합니다
        var customOverlay = new kakao.maps.CustomOverlay({
          map: map,
          position: iwPosition,
          content: iwContent,
          yAnchor: 0.9,
          xAnchor: 0.61
        });

	   
	}
	
	
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
