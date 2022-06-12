<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 나의 반려견</title>

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

</head>
<body class="hold-transition sidebar-mini layout-fixed "
	style="background-color: #f4f6f9;">
	<%@include file="/WEB-INF/views/include/Header.jsp"%>
	<div class="wrapper">
		<!-- Main Sidebar Container -->
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
							class="nav-link active">
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
						<li class="nav-item"><a href="/walk/myWalk" class="nav-link">
								<p>나의 산책로</p>
						</a></li>

					</ul>
				</nav>
			</div>
		</aside>

		<main class="content-wrapper">
			<div class="row">
				<div class="col-9 mx-auto">

<%-- 					<c:if test="${empty myPet.petNum}">
						<div class="blog-posts sticky-posts"
							style="margin-top: 2%; margin-bottom: 2%; border-radius: 25px; border-right-style: solid; border-color: orange;">
							<div id="post-1" class="post type-post post-1 card post-card"
								style="border-radius: 25px;">
								<div class="row">
									<div class="col-md-6 mr-auto">
										<div
											class="card-body h-100 d-flex align-items-center flex-column">
											<h3>
												<a href="myPageDogAdd">등록된 정보가 없습니다.(클릭)</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:if> --%>

					<%-- <c:if test="${not empty myPet.petNum }"> --%>
						<c:forEach var="pet" items="${paging}">
							<div class="blog-posts sticky-posts"
								style="margin-top: 2%; margin-bottom: 2%; border-radius: 25px; border-right-style: solid; border-color: orange;">
								<div id="post-1" class="post type-post post-1 card post-card"
									style="border-radius: 25px;">
									<div class="row">
										<div class="col-md-3 mx-auto" style="margin: 1%;">
											<img class="card-img" src="/img/petImg/${pet.petImg }"
												alt="Post"
												style="width: 250px; height: 250px; border-radius: 50%;">
										</div>
										<div class="col-md-6 mr-auto">
											<div
												class="card-body h-100 d-flex align-items-start flex-column">
												<h3 class="post-title card-title">
													<a href="/myPage/myPageDogDetail?petNum=${pet.petNum }">${pet.petName}</a>
												</h3>
												<p class="post-text card-text">
												<table>
													<tr>
														<th>견종 :</th>
														<th>${pet.petVariety}</th>
													</tr>
													<tr>
														<th>성별 :</th>
														<th>${pet.petGender}</th>
													</tr>
													<tr>
														<th>나이 :</th>
														<th>${pet.petAge}세</th>
													</tr>
													<tr>
														<th>중성화 :</th>
														<th>&nbsp;${pet.petNeutering}</th>
													</tr>
												</table>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<div
							class="d-flex justify-content-end align-items-center post-meta w-100">
							<a href="myPageDogAdd"
								class="more-link card-link d-flex align-items-center"> 추가 등록
								&nbsp; <i class="lana-icon-arrow-right text-primary"></i>
							</a>
						</div>

						<nav class="pagination" role="navigation">

							<div class="nav-links">
								<c:set var="recordsCnt" value="${count}" />
								<c:set var="jspFile" value="myPageDogList?" />
								<c:set var="perpage" value="3" />
							</div>

							<!-- include 페이징  jsp파일  -->
							<%@include file="/WEB-INF/views/include/paging.jsp"%>
						</nav>
					<%-- </c:if> --%>

				</div>
			</div>
		</main>

	</div>
	<!-- ./wrapper -->
	<%@include file="/WEB-INF/views/include/Footer.jsp"%>

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


	<script type="text/javascript">
		$(document).ready(function() {
			$(".btn-add").mouseover(function() {
				$(".btn-add").css("background-color", "#dc6721");
			});
			$(".btn-add").mouseout(function() {
				$(".btn-add").css("background-color", "#F8b03a");
			});

			$(".btn-modify").mouseover(function() {
				$(".btn-modify").css("background-color", "#dc6721");
			});
			$(".btn-modify").mouseout(function() {
				$(".btn-modify").css("background-color", "#F8b03a");
			});
			/* 프로필사진 업로드 */
			$(".btn-add").click(function(e) {
				e.preventDefault();
				$("#file").click();
			});

		});
		
		
	</script>
</body>
</html>

