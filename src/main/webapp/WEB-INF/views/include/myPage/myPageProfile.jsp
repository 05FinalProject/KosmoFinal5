<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 나의 프로필</title>

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

</head>
<body class="hold-transition sidebar-mini layout-fixed"
	style="background-color: #f4f6f9;">
	<%@include file="../Header.jsp"%>
	<div class="wrapper">
		<!-- Main Sidebar Container -->
		<aside class="myPage-sidebar asidebar beta">
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
						<li class="nav-item"><a href="../friend/friendList" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">펫친관리</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="../friend/friendFind" class="nav-link"
							onmouseover="this.style.color='orange';"
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
						<div class="text-center">
							<button href="javascript(0);" class="btn btm-sm btn-danger"
								style="padding:1%; margin-top:50%;">
								회원탈퇴</i>
							</button>
							<input type="button" id="userDelete" style="display: none;">
						</div>

					</ul>
				</nav>
			</div>
			<!-- /.sidebar -->

		</aside>
		<div class="content-wrapper" style="margin-left: 10%;">
			<section class="content-header">
				<div class="container-fluid profileHead"></div>
				<!-- /.container-fluid -->
			</section>
			<div class="card-body box-profile">
				<div class="text-center">
					<img class="profile-user-img img-fluid img-circle"
						src="/${sessionScope.pRimgname }"
						alt="User profile picture" style="width: 15%; height: 15%;">
				</div>
				<div class="text-center">
					<button href="javascript(0);" class="btn btm-sm btn-add"
						style="background-color: #F8b03a; color: white; padding: 0.5%; margin-top: 1%">
						프로필 수정</i>
					</button>
					<input type="file" id="file" style="display: none;">
				</div>
			</div>
			<!-- /.card-body -->
			<section class="content context">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<div class="card">
								<div class="card-body">
									<div class="tab-content">
										<!-- /.tab-pane -->

										<div class="active tab-pane" id="settings">
											<form class="form-horizontal">
												<div class="form-group row">
													<label for="inputName" class="col-sm-2 col-form-label">이메일</label>
													<div class="col-sm-10">
														<input type="email" class="form-control" id="inputName"
															value="${sessionScope.userEmail }" disabled="">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail" class="col-sm-2 col-form-label">비밀번호</label>
													<div class="col-sm-10">
														<input type="password" class="form-control"
															id="inputEmail" placeholder="password">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail" class="col-sm-2 col-form-label">비밀번호
														확인</label>
													<div class="col-sm-10">
														<input type="password" class="form-control"
															id="inputEmail" placeholder="password">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputExperience"
														class="col-sm-2 col-form-label">이름</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" id="inputEmail"
															value="${sessionScope.userName }" disabled="">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputSkills" class="col-sm-2 col-form-label">전화번호</label>
													<div class="col-sm-10">
														<input type="tel" class="form-control" id="inputSkills"
															value="${sessionScope.userPhone }" disabled="">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputSkills" class="col-sm-2 col-form-label">닉네임</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" id="inputSkills"
															value="${sessionScope.userNickname }" disabled="">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputSkills" class="col-sm-2 col-form-label">주소</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" id="inputSkills"
															value="${sessionScope.userAddress }" disabled="">
													</div>
												</div>
												<div style="float: right;">
													<button type="button" class="btn btn-modify"
														style="background-color: #F8b03a; color: white;">수정</button>
												</div>
											</form>
										</div>
										<!-- /.tab-pane -->
									</div>
									<!-- /.tab-content -->
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
			</section>
		</div>
	</div>
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
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="../../admin/dist/js/pages/dashboard.js"></script>
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

