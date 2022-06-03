<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 친구정보</title>

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

<style>

.context{
    margin-left: 0%;
}

.boxbox{
	padding-bottom:5%;
}
</style>

</head>
<body class="hold-transition sidebar-mini layout-fixed"
	style="background-color: #f4f6f9;">
	<%@include file="../Header.jsp"%>
	<div class="wrapper">
		<!-- Main Sidebar Container -->
		<!-- Sidebar -->
		<aside class="myPage-sidebar asidebar beta">
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      </div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <!-- 마이 프로필 -->
          <li class="nav-item">
            <a href="myPageProfile" class="nav-link">
              <p>
                마이 프로필
              </p>
            </a>
          </li>
        
          <!-- 나의 게시글 -->
          <li class="nav-item">
            <a href="myPageBoard" class="nav-link">
              <p>
                나의 게시글
              </p>
            </a>
          </li>

          <!-- 반려동물 -->
          <li class="nav-item">
            <a href="myPageDogList" class="nav-link">
              <p>
                반려동물
              </p>
            </a>
          </li>

          <!-- 펫친관리 -->
          <li class="nav-item">
            <a href="../friend/friendList" class="nav-link active">
              <p>
                펫친관리
              </p>
            </a>
          </li>

          <!-- 친구찾기 -->
          <li class="nav-item">
            <a href="../friend/friendFind" class="nav-link">
              <p>
                펫친찾기
              </p>
            </a>
          </li>
          
          <!-- 나의 산책로 -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                나의 산책로
              </p>
            </a>
          </li>
          
        </ul>
      </nav>
    </div>
  </aside>
		<!-- /.sidebar -->
		<div class="content-wrapper">
			<!-- 내용 넣는 곳 -->
			<div class="card-body box-profile">
				<div class="text-center">
					<img class="profile-user-img img-fluid img-circle"
						src="../../admin/dist/img/user4-128x128.jpg"
						alt="User profile picture" style="width: 15%; height: 15%;">
				</div>
				<div class="text-center">
					<button href="javascript(0);" class="btn btm-sm btn-add"
						style="background-color: #F8b03a; color: white; padding: 0.5%; margin-top: 1%">
						친구 추가</i>
					</button>
					<input type="file" id="file" style="display: none;">
				</div>
			</div>
			<section class="content context">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8 boxbox" style="float: none; margin: 0 auto;">
							<div class="card">
								<div class="card-body">
									<div class="tab-content">
										<!-- /.tab-pane -->

										<div class="active tab-pane" id="settings">
											<form class="form-horizontal">
												<div class="form-group row">
													<label for="inputName" class="col-sm-2 col-form-label">닉네임</label>
													<div class="col-sm-10">
														<input type="text" class="form-control">
															
													</div>
												</div>
												<div class="form-group row">
													<label for="inputEmail" class="col-sm-2 col-form-label">견종선택</label>
													<div class="col-sm-10">
														<select class="form-control" style="float: left;">
															<option>견종 선택</option>
															<c:forEach var="vo" items="${kindList}">
																<option>${vo.dogKind}</option>
															</c:forEach>

														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputExperience"
														class="col-sm-2 col-form-label">반려견 이름</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" inputmode="text">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputSkills" class="col-sm-2 col-form-label">반려견
														몸무게</label>
													<div class="col-sm-10">
														<input type="tel" class="form-control" id="inputSkills">
															
													</div>
												</div>
												<div class="form-group row">
													<label for="inputSkills" class="col-sm-2 col-form-label">반려견
														성별</label>
													<div>
														<button class="btn btn-modify btn-sm boy"
															style="background-color: #F8b03a; color: white; margin-left: 15px;">남아</button>
														<button class="btn btn-modify btn-sm girl"
															style="background-color: #F8b03a; color: white;">여아</button>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputSkills" class="col-sm-2 col-form-label">중성화
														여부</label>
													<div>
														<button class="btn btn-modify btn-sm yes"
															style="background-color: #F8b03a; color: white; margin-left: 15px;">했어요</button>
														<button class="btn btn-modify btn-sm no"
															style="background-color: #F8b03a; color: white;">안했어요</button>
													</div>
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
</body>
</html>

