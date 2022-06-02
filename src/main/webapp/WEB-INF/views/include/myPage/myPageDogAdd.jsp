<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 반려견 정보 수정</title>

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
	
<style>
.form-controller{
display: block;
    width: 100%;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212121;
    background-color: #fafafa;
    background-clip: padding-box;
    border: 1px solid #fafafa;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

</style>

</head>
<body class="hold-transition sidebar-mini layout-fixed "
	style="background-color: #f4f6f9;">
	<%@include file="../Header.jsp"%>
	<div class="wrapper">
		<!-- Main Sidebar Container -->
		<aside class="myPage-sidebar asidebar" style="margin-top: auto;">
			<!-- Sidebar -->
			<div>
				<nav class="mt-2">
					<ul class="nav nav-pills sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false"
						style="font-weight: bolder; color: black;">
						<li class="nav-item"><a href="myPageProfile" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">나의 프로필</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="myPageBoard" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">나의 게시글</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="myPageDogList" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">반려동물</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="../friend/friendList"
							class="nav-link" onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">펫친관리</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="../friend/friendFind"
							class="nav-link" onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">펫친 찾기</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">나의 산책로</i>
								</p>
						</a></li>
					</ul>
				</nav>
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->

		<section>
			<!-- Default box -->
			<div class="card-solid mx-auto" style="width: 80%;">
				<div class="card-body">
					<div class="row" style="margin-top: 5%;">
						<div class="col-12 col-sm-7">
							<div class="col-10 mx-auto my-auto">
								<img src="/pictures/placeholder/530x400.svg"
									class="product-image" alt="Product Image"
									style="border-radius: 10%;">
							</div>
						</div>
						<div class="col-12 col-sm-5">
							<input type="text" placeholder="이름" id="petName">
							<hr>
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
								<table>
									<tr>
										<th>견&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종 :</th>
										<th style="height:50%;"><select class="form-controller" style="float: left;">
												<c:forEach var="pvo" items="${kindList}">
													<option>${pvo.dogKind}</option>
												</c:forEach>

										</select></th>
									</tr>
									<tr>
										<th>몸무게 :</th>
										<th><input type="text" placeholder="kg" id="petHeight"></th>
									</tr>
									<tr>
										<th>성별 :</th>
										<th><label class="btn btn-default text-center active">
												남아 <br> <i class="fas fa-user fa text-blue"></i>
										</label> <label class="btn btn-default text-center"> 여아 <br>
												<i class="fas fa-user fa text-red"></i>
										</label></th>
									</tr>
									<tr>
										<th>중성화 :</th>
										<th><label class="btn btn-default text-center active">
												했어요 <br> <i class="fas fa-dot-circle fa text-green"></i>
										</label> <label class="btn btn-default text-center"> 안했어요 <br>
												<i class="fas fa-times-circle fa text-orange"></i>
										</label></th>

									</tr>

								</table>
							</div>


							<div class="mt-4">
								<div class="btn btn-primary btn-flat "><input type="submit" value="등록"></div>

								<div class="btn btn-danger btn-flat float-right"><input type="button" value="취소"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->

		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->


	<!-- ./wrapper -->
	<%@include file="../Footer.jsp"%>

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
	<script src="../../admin/dist/js/adminlte.min.js"></script>
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

