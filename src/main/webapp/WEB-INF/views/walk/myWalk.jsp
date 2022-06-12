<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- WithYou myPage Custom Css-->
<link rel="stylesheet" href="/myPage/css/myPage.css">
<link rel="stylesheet" href="/walk/calendar.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css" />
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<style>
#walkDate {
	text-align: center;
}

.walk-info {
	text-align: center;
}

/* .walk-list {
	border: 1px solid;
	border-radius: 20px;
	text-align: center;
	padding: 0px 10px;
	margin-left: 30px;
	max-width: 250px;
} */
ul{
    list-style: none;       /* ul태그의 불릿 제거 */
    padding-left: 0px;
}
.walk-list{
    height: 60px;
    margin: 10px;                   /* 바깥쪽 여백 */
    padding: 10px;
    background-color: #ffeb9b;
    border-radius: 7px;             /* 모서리 둥글게 처리 */
	font-family: inherit;
	align-items: center;
	display:flex;
	font-size: 19px;
	text-align: center;

}
.walk-color {
	color: #ff5c00;
}
</style>
</head>
<body>
	<%@include file="../include/Header.jsp"%>

	<div class="container">
		<div class="row">
			<div class="calendar-container col-md-8">
				<div class="my-calendar clearfix">
					<div class="clicked-date">
						<div class="cal-day"></div>
						<div class="cal-date"></div>
					</div>
					<div class="calendar-box">
						<div class="ctr-box clearfix">
							<button type="button" title="prev" class="btn-cal prev"></button>
							<span class="cal-month"></span> <span class="cal-year"></span>
							<button type="button" title="next" class="btn-cal next"></button>
						</div>
						<table class="cal-table">
							<thead>
								<tr>
									<th>S</th>
									<th>M</th>
									<th>T</th>
									<th>W</th>
									<th>T</th>
									<th>F</th>
									<th>S</th>
								</tr>
							</thead>
							<tbody class="cal-body"></tbody>
						</table>
					</div>
				</div>
				<!-- // .my-calendar -->
			</div>
			<div class="col-md-4 mt-4">


				<ul id="walkDog">
					<c:forEach items="${walkList}" var="walk">

						<a class="walk-modal" data-toggle="modal"
							data-target="#calendarModal">
							<li class="walk-list">시간 <span class="walk-color">${walk.walkTime}</span>분
								&nbsp; 거리 <span class="text-primary">${walk.walkDistance }</span>m 
								<input value=${walk.walkId } type="hidden"/>
								</li>
						</a>
					</c:forEach>
					
				</ul>
			</div>
		</div>
	</div>

	<!-- 모달 -->
	<div class="modal fade" id="calendarModal" tabindex="-1"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id=""></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- form start -->
				<div class="modal-body">
					<div class="container-fluid">
						<!-- <div class="row"> -->
						<div id="walkDate" class="mb-4">
							<h1>산책 날짜</h1>
						</div>
						<div class="row walk-time mb-3">
							<div class="col-2"></div>
							<label for="walk-start" class="control-label">시작:</label>
							<div class="col-3">
								<input type="text" class="form-control" id="walk-start" name="" />
							</div>
							<label for="walk-end" class="control-label">종료:</label>
							<div class="col-3">
								<input type="text" class="form-control" id="walk-end" name="" />
							</div>
						</div>

						<div class="row">
							<div class="mb-3 col-2"></div>
							<div class="mb-3 col-4 walk-info">
								<label for="exampleFormControlInput1" class="form-label">산책시간</label>
								<input type="text" class="form-control"
									id="exampleFormControlInput1" name="" />
							</div>
							<div class="mb-3 col-4 walk-info">
								<label for="exampleFormControlInput1" class="form-label">거리</label>

								<input type="text" class="form-control"
									id="exampleFormControlInput1"
									2
                          name="facility" />
							</div>

							<!-- <div class="mb-3 col-md-4">
                        <label for="exampleFormControlInput1" class="form-label"
                          >칼로리</label
                        >
                        <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          2
                          name="facility"
                        />
                      </div> -->
							<div id="map3" style="width: 100%; height: 350px"></div>

							<!-- </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<%@include file="../include/Footer.jsp"%>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f5b6c107c52e63373c42ed42d662f260"></script>
	<!-- <script>
      var mapContainer = document.getElementById("map3"), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
          level: 5, // 지도의 확대 레벨
        };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
      var lat;
      var lon;
      var options = {
        enableHighAccuracy: true,
        timeout: 5000,
        maximumAge: 0,
      };
      // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
      if (navigator.geolocation) {
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {
          console.log("포지션" + position);
          (lat = position.coords.latitude), // 위도
            (lon = position.coords.longitude); // 경도

          var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
          console.log("loc포지션" + locPosition);
          // 마커와 인포윈도우를 표시합니다
          displayMarker(locPosition, message);
        });
      } else {
        // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),
          message = "geolocation을 사용할수 없어요..";

        displayMarker(locPosition, message);
      }

      // var listLat = [];
      // var listLon = [];
      var polyline;

      function success(position) {
        console.log(position);
        (lat = position.coords.latitude), // 위도
          (lon = position.coords.longitude); // 경도
        // listLat.push(lat);
        // listLon.push(lon);
        // if(){

        // }


        mylotation(lat, lon);

        polyline = new kakao.maps.Polyline({
          path: linePath, // 선을 구성하는 좌표배열 입니다
          strokeWeight: 5, // 선의 두께 입니다
          strokeColor: "#FFAE00", // 선의 색깔입니다
          strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle: "solid", // 선의 스타일입니다
        });

        // 지도에 선을 표시합니다
        polyline.setMap(map);

        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
          message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다

        displayMarker(locPosition, message);
      }

      function error(err) {
        console.log(err);
      }
      var navi;

/*       var imageSrc =
          "https://vrthumb.clipartkorea.co.kr/2015/11/12/cb059000011.jpg", // 마커이미지의 주소입니다
        imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption = { offset: new kakao.maps.Point(27, 69) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

      // 지도에 마커와 인포윈도우를 표시하는 함수입니다
      var marker;
      var markerImage = new kakao.maps.MarkerImage(
        imageSrc,
        imageSize,
        imageOption
      ); */
      // var flag = false;
   /*    function displayMarker(locPosition, message) {
        //마커 하나만 생성
        if (flag) {
          marker.setMap(null);
        }
        // 마커를 생성합니다
        marker = new kakao.maps.Marker({
          position: locPosition,
          image: markerImage,
        });
        marker.setMap(map);
        flag = true;

        // var iwContent = message, // 인포윈도우에 표시할 내용
        //   iwRemoveable = true;

        // // 인포윈도우를 생성합니다
        // var infowindow = new kakao.maps.InfoWindow({
        //   content: iwContent,
        //   removable: iwRemoveable,
        // });

        // // 인포윈도우를 마커위에 표시합니다
        // infowindow.open(map, marker);

        // // 지도 중심좌표를 접속위치로 변경합니다
        map.setCenter(locPosition);
      }  */

      // 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다

      var linePath = [];
      var listLat = [];
      var listLon = [];
      var qwer = 0;

      let standardPosition;

      function mylotation(lat, lon) {
        const lotation = new kakao.maps.LatLng(lat, lon);
        console.log("lon" + lotation.La);
        console.log("lat" + lotation.Ma);
        console.log("lat" + lat);
        console.log("lon" + lon);
        if (standardPosition == null) {
          standardPosition = lotation;
          linePath.push(standardPosition);
          listLat.push(standardPosition.Ma);
          listLon.push(standardPosition.La);

          Number($("#walk-distance").val(qwer));
        } else {
          const dis = distance(
            standardPosition.Ma,
            standardPosition.La,
            lat,
            lon
          );
          console.log("거리 " + dis);
          if (dis >= 10) {
            linePath.push(lotation);
            standardPosition = lotation;
            listLat.push(standardPosition.Ma);
            listLon.push(standardPosition.La);

            qwer += 10;

            Number($("#walk-distance").val(qwer));
          }
        }

        // console.log("거리" + distance(lat, lon, lat, lon));
      }


      $(document).on("click", ".walk-modal", function () {
        setTimeout(function () {
          map.relayout();
        }, 500);
      });

      // $(".walk-modal").click(function name(params) {
      //   alert("ddd");
      // });
      
      $(document).on("click", ".walk-list", function () { 
     	  $.ajax({
    			url:"/walk/myWalk3",
    			data:{walkId:$(this).children("input").val()} ,
    			type: "get",
    			success: function(result){
    				console.log(result);
    				
    				$("#walk-start").val(result.walkStart);

    				
    				
    			} 
     	  })
      });
    </script> -->
    <script>
    var mapContainer = document.getElementById('map3'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	var linePath = [
	    new kakao.maps.LatLng(33.452344169439975, 126.56878163224233),
	    new kakao.maps.LatLng(33.452739313807456, 126.5709308145358),
	    new kakao.maps.LatLng(33.45178067090639, 126.5726886938753),
	];

	// 지도에 표시할 선을 생성합니다
	var polyline = new kakao.maps.Polyline({
	    path: linePath, // 선을 구성하는 좌표배열 입니다
	    strokeWeight: 5, // 선의 두께 입니다
	    strokeColor: '#FFAE00', // 선의 색깔입니다
	    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	    strokeStyle: 'solid' // 선의 스타일입니다
	});

	// 지도에 선을 표시합니다 
	polyline.setMap(map);  
    </script>

	<script type="text/javascript">
		$(document).on("click", ".walk-modal", function() {
			setTimeout(function() {
				map.relayout();
			}, 500);
		});
		const lotation = new kakao.maps.LatLng(lat, lon);
		$(document).on("click", ".walk-list", function() {
			$.ajax({
				url : "/walk/myWalk3",
				data : {
					walkId : $(this).children("input").val()
				},
				type : "get",
				success : function(result) {
					console.log(result);
					zip= rows=>rows[0].map((_,c)=>rows.map(row=>row[c]));
				/* 	let lotation = new kakao.maps.LatLng(lat, lon);
					linePath.push(); */
					let lat = result.walkLat
					let lon = result.walkLon
					let latList = lat.split(",")
					let lonList = lon.split(",")
					
					const coorList = latList.map((x, i) => [x, lonList[i]]);
					/* console.log(coorList) */
					
				for ( var coor in coorList) {
					console.log("qweqwe"+coorList[coor])
					
				}

					
				/* 	for ( var a, b in (latList, lonList)) {
						console.log(latList[a]);
						console.log(lonList[b]);
					} */
					
					
					
					$("#walk-start").val(result.walkStart);
				}
			})
		});
	</script>


	<script type="text/javascript" src="/walk/calendar.js"></script>
</body>
</html>