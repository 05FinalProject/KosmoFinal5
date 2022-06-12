<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 친구목록</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="../../admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="../../admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="../../admin/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../admin/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="../../admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="../../admin/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="../../admin/plugins/summernote/summernote-bs4.min.css">
<!-- WithYou myPage Custom Css-->
<link rel="stylesheet" href="/myPage/css/myPage.css">
<script src="https://kit.fontawesome.com/23b331c6f8.js"
	crossorigin="anonymous"></script>

<style type="text/css">
.content {
	padding-top: 3%;
	padding-bottom: 3%;
	padding-left: 10%;
	padding-right: 10%;
	margin-left: 8%;
	margin-right: 8%;
}

.col-7 {
	margin-top: 7%;
}

.card-body .pt-0 {
	height: 10%;
}

.friendList-paging {
	margin-left: 15%;
	margin-right: 15%;
	/* margin-bottom:3%; */
}

.btn-group {
	
}

.btn-group-group {
	align-items: right;
}

.mt-2 {
	margin-top: 0px;
	float: left;
	width: 20%;
	background-color: white;
}

#community-nav {
	width: 60%;
}

.nav-sidebar .nav-link p {
	display: inline;
	margin: 0;
	white-space: inherit;
}
p{
	display:inline;
	font-size:15px;
	margin:0;
	white-space:noraml;
	line-height: 1.8;
	font-weight: 400;
	color: black;
}

</style>

</head>
<body class="hold-transition sidebar-mini layout-fixed"
	style="background-color: #f4f6f9;">
	<%@include file="../include/Header.jsp"%>
	<div class="wrapper">

		<aside class="myPage-sidebar asidebar beta">
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
							class="nav-link active">
								<p>펫친관리</p>
						</a></li>

						<!-- 친구찾기 -->
						<li class="nav-item"><a href="/friend/friendFind"
							class="nav-link">
								<p>펫친찾기</p>
						</a></li>

						<!-- 나의 산책로 -->
						<li class="nav-item"><a href="#" class="nav-link">
								<p>나의 산책로</p>
						</a></li>

					</ul>
				</nav>
			</div>
		</aside>
		<!-- /.sidebar -->
		<div class="content-wrapper">
			<!-- 내용 넣는 곳 -->

			<!-- Main content -->
			<section class="content">
				<div class="btn-group-group">
					<div class="btn-group">
						<a class="btn btn-" id="friendChat"> <i
							class="fa-solid fa-user"></i> 친구채팅 <i
							class="fa-solid fa-angle-right" style="color: #f8b03a"></i>
							<form id="friendChating" action="/chating/friendChat"
								method="post">
								<input type="hidden" value="${sessionScope.userEmail }"
									name="userEmail" />
							</form>
						</a> <a href="#" class="btn"> <i class="fa-solid fa-users"></i>
							그룹채팅 <i class="fa-solid fa-angle-right" style="color: #f8b03a"></i>
						</a>
					</div>
				</div>

				<!-- Default box -->
				<div class="card card-solid">
					<div class="card-body pb-0">

						<div class="row">
							<c:set var="page" value="1" />
							<c:if test="${param.page != null }">
								<c:set var="page" value="${param.page}" />
							</c:if>
							<c:if test="${count !=0 }">
								<c:choose>
									<c:when test="${count >=page*9 }">
										<c:forEach begin="${page*9-9}" end="${page*9-1}" var="i">
											<div
												class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
												<div class="card bg-light d-flex flex-fill">

													<div class="card-body pt-0">
														<div class="row">
															<div class="col-7">
																<h2 class="lead" style="font-weight: bold;">
																	<b>${list[i].nickName}</b>
																</h2>
																<br />
																<p class="text-muted text-sm">
																	<b>Email: </b>${list[i].email }</p>
																<ul class="ml-4 mb-0 fa-ul text-muted">
																	<li class="small"><span class="fa-li"><i
																			class="fa-solid fa-paw"></i></span>강아지 수 : ${list[i].petCnt }</li>

																</ul>
															</div>
															<div class="col-5 profile-img" style="padding-top: 25px;">
																<img src="/${list[i].img }" alt="user-avatar"
																	class="img-circle img-fluid">
															</div>
														</div>
													</div>
													<div class="card-footer">
														<div class="text-right">
															<a href="#" class="btn btn-sm bg-teal"> <i
																class="fa-solid fa-trash-can"></i>
															</a> <a href="#" class="btn btn-sm bg-teal"> <i
																class="fa-solid fa-ban ban"></i>
															</a> <a href="#" class="btn btn-sm btn-primary"> <i
																class="fas fa-user"></i>상세보기
															</a>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:when test="${count <page*9 }">
										<c:forEach begin="${page*9-9}" end="${count-1}" var="i">
											<div
												class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
												<div class="card bg-light d-flex flex-fill">

													<div class="card-body pt-0">
														<div class="row">
															<div class="col-7">
																<h2 class="lead" style="font-weight: bold;">
																	<b>${list[i].nickName }</b>
																</h2>
																<br />
																<p class="text-muted text-sm">
																	<b>Email: </b>${list[i].email }</p>
																<ul class="ml-4 mb-0 fa-ul text-muted">
																	<li class="small"><span class="fa-li"><i
																			class="fa-solid fa-paw"></i></span>강아지 수 : ${list[i].petCnt }</li>

																</ul>
															</div>
															<div class="col-5 profile-img" style="padding-top: 25px;">
																<img src="/${list[i].img }" alt="user-avatar"
																	class="img-circle img-fluid">
															</div>
														</div>
													</div>
													<div class="card-footer">
														<div class="text-right">
															<a href="#" class="btn btn-sm bg-teal"> <i
																class="fa-solid fa-trash-can"></i>
															</a> <a href="#" class="btn btn-sm bg-teal"> <i
																class="fa-solid fa-ban ban"></i>
															</a> <a href="/friend/friendProfile" class="btn btn-sm btn-primary"> <i
																class="fas fa-user"></i>상세보기
															</a>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
								</c:choose>
							</c:if>
							<!-- 친구가 없는 경우 -->
							<c:if test="${count == 0 }">
								
								<div class="col-12 col-md-6 px-0 px-md-5 my-4">
									<div
										class="lana_service type-lana_service card service-card bg-transparent text-center h-100">
										<div class="card-img-top mt-5 img-fluid animated zoomIn"
											data-scroll-animate="zoomIn">
											<span class="lpi lpi-dog lpi-5x text-primary"></span>
										</div>
										<div class="card-body animated fadeIn"
											data-scroll-animate="fadeIn">
											<h5 class="post-title card-title"></h5>
											<div class="lana-hr lana-hr-2 border-primary mb-3"></div>
											<p class="post-text card-text">현재 친구상태인 회원이 없습니다.</p>
										</div>
										<div class="card-footer pb-5 animated fadeInUp"
											data-scroll-animate="fadeInUp">
											<p class="card-text">
												<a href="/friend/friendFind" class="more-link card-link">친구 만들러 가기<i
													class="lana-icon-arrow-right text-primary"></i>
												</a>
											</p>
										</div>
									</div>
								</div>
								
							</c:if>


							<!-- 사용자 프로필 끝 -->
						</div>
					</div>
					<!-- /.card-body -->


					<!-- <div class="card-footer">
					<nav aria-label="Contacts Page Navigation">
						<ul class="pagination justify-content-center m-0">
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">6</a></li>
							<li class="page-item"><a class="page-link" href="#">7</a></li>
							<li class="page-item"><a class="page-link" href="#">8</a></li>
						</ul>
					</nav>
				</div> -->
					<!-- /.card-footer -->


				</div>
				<!-- /.card -->


			</section>
			<!-- /.content -->
			<div class="friendList-paging">
				<c:if test="${count > 9 }">
					<nav
						class="navigation pagination justify-content-between bg-transparent text-uppercase"
						role="navigation">
						<div class="nav-links ">
							<c:set var="recordsCnt" value="${count}" />
							<c:set var="jspFile" value="friendList?" />
							<c:set var="perpage" value="9" />
						</div>
						<%@include file="/WEB-INF/views/include/paging.jsp"%>
					</nav>
				</c:if>
			</div>
		</div>
	</div>
	<!-- ./wrapper -->
	<%@include file="../include/Footer.jsp"%>

	<!-- jQuery -->
	<script src="../../admin/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="../../admin/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="../../admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="../../admin/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="../../admin/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="../../admin/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="../../admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="../../admin/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="../../admin/plugins/moment/moment.min.js"></script>
	<script src="../../admin/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="../../admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="../../admin/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="../../admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../admin/dist/js/adminlte.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="../../admin/dist/js/pages/dashboard.js"></script>
	<script type="text/javascript">
	$('#friendChat').click(function(){
		$('#friendChating').submit()
	})

	</script>
</body>
</html>

