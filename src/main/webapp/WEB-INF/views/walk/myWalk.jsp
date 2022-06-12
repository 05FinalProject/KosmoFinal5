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
.walk-date{
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
ul {
	list-style: none; /* ul태그의 불릿 제거 */
	padding-left: 0px;
}

.walk-list {
	height: 60px;
	margin: 10px; /* 바깥쪽 여백 */
	padding: 10px;
	background-color: #ffeb9b;
	border-radius: 7px; /* 모서리 둥글게 처리 */
	font-family: inherit;
	align-items: center;
	display: flex;
	font-size: 19px;
	text-align: center;
}

.walk-color {
	color: #ff5c00;
}
.walk-time{
	align-items: center;
	display: flex;
}

.walk-time2{
	border:none;
}

footer {
	width: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
}

.asidebar {
    width: 12%;
    background-color: white;
    position: absolute;
    height: 90%;
}

.walk-start-end {
	background-color: #ffeb9b;
	border-radius: 7px;
	text-align: center;
	
}
.form-control{
	text-align: center;
}

.updown {
    	border: 1px solid gray;
        width: 0.1px;
        height: 100px;
        border-width: thin;
    }


</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<%@include file="../include/Header.jsp"%>
	<div class="wrapper">
		<aside class="asidebar beta">
			<div class="sidebar">
				<div class="user-panel mt-3 pb-3 mb-3 d-flex"></div>
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">

						<!-- 마이 프로필 -->
						<li class="nav-item"><a href="/myPage/myPageProfile"
							class="nav-link">
								<p>마이 프로필</p>
						</a></li>

						<!-- 나의 게시글 -->
						<li class="nav-item"><a href="/myPage/myPageBoard"
							class="nav-link">
								<p>나의 게시글</p>
						</a></li>

						<!-- 반려동물 -->
						<li class="nav-item"><a href="/myPage/myPageDogList"
							class="nav-link">
								<p>반려동물</p>
						</a></li>

						<!-- 펫친관리 -->
						<li class="nav-item"><a href="/friend/friendList"
							class="nav-link">
								<p>펫친관리</p>
						</a></li>

						<!-- 친구찾기 -->
						<li class="nav-item"><a href="/friend/friendFind"
							class="nav-link">
								<p>펫친찾기</p>
						</a></li>

						<!-- 나의 산책로 -->
						<li class="nav-item"><a href="/walk/myWalk" class="nav-link active">
								<p>나의 산책로</p>
						</a></li>

					</ul>
				</nav>
			</div>
		</aside>
		<div class="content-wrapper">
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
							<li class="walk-list">시간 
							<span class="walk-color">${walk.walkTime}</span>분 &nbsp; 
								거리 <span class="text-primary">${walk.walkDistance }</span>m 
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
						<div class="modal5-header">
							<div class="container-fluid">
								<div class="row">
									<div class="walk-date col-12">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h2 class="modal-title" id="walkDate"></h2>
									</div>
								</div>
							</div>
						</div>
						 <hr width = "100%" color = "gray">
						<!-- form start -->
						<div class="modal-body">
							<div class="container">
								<!-- <div class="row"> -->
								
								<div class="row walk-time mb-3">
									<div class="col-1"></div>
								
									<span class="walk-start-end col-2">시작</span>
									<div class="col-3">
										<input type="text" class="walk-time2" id="walk-start"
											size="10" />
									</div>
									
									<span class="walk-start-end col-2">종료</span>
									<div class="col-3">
										<input type="text" class="walk-time2" id="walk-end" size="10" />
									</div>
									<div class="col-1"></div>
								</div>
								<hr width = "100%" color = "gray">

								<div class="row">
									<div class="mb-3 col-1"></div>
									<div class="mb-3 col-4 walk-info">
										<label for="exampleFormControlInput1" class="form-label">산책시간</label>
										<input type="text" class="form-control" id="walk-time" />min
									</div>
									<div class="mb-3 col-1"></div>
									<div class="updown"></div>
									<div class="mb-3 col-1"></div>
									<div class="mb-3 col-4 walk-info">
										<label for="exampleFormControlInput1" class="form-label">거리</label>

										<input type="text" class="form-control" id="walk-distance" />m
									</div>



									<!-- </div> -->
									<div id="map3" style="width: 100%; height: 350px"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 		</div>
	</div>
 -->

	<%@include file="../include/Footer.jsp"%>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f5b6c107c52e63373c42ed42d662f260"></script>
		
    <script>
    var mapContainer = document.getElementById('map3'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.4730836, 126.8788276), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map2 = new kakao.maps.Map(mapContainer, mapOption);
	
	// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	var linePath = [];
	
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
			
				let lat = result.walkLat
				let lon = result.walkLon
				let latList = lat.split(",")
				let lonList = lon.split(",")
				
				const coorList = latList.map((x, i) => [x, lonList[i]]);
				
				
			for ( var coor in coorList) {
				console.log("qweqwe"+coorList[coor][0])
				console.log("qweeeeeqwe"+coorList[coor][1])
				
				const lotation = new kakao.maps.LatLng(coorList[coor][0], coorList[coor][1]);
				console.log("로테로테"+lotation)
				linePath.push(lotation); 
				
			}
					
			
				// 지도에 표시할 선을 생성합니다
				var polyline = new kakao.maps.Polyline({
				    path: linePath, // 선을 구성하는 좌표배열 입니다
				    strokeWeight: 5, // 선의 두께 입니다
				    strokeColor: '#FFAE00', // 선의 색깔입니다
				    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				    strokeStyle: 'solid' // 선의 스타일입니다
				    	 
				});
				console.log("넌 뭐나요냐?"+linePath)

				// 지도에 선을 표시합니다 
				polyline.setMap(map2);  
				
				
				$("#walk-start").val(result.walkStart);
				$("#walk-end").val(result.walkEnd);
				$("#walk-time").val(result.walkTime);
				$("#walk-distance").val(result.walkDistance);
				$("#walkDate").text(result.createdDateAt)
			}
		})
	});

 
		$(document).on("click", ".walk-modal", function() {
			setTimeout(function() {
				map2.relayout();
			}, 500);
		});
		
	</script>


	<script type="text/javascript" src="/walk/calendar.js"></script>
</body>
</html>