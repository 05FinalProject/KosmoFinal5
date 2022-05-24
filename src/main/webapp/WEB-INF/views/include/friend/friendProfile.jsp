<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="/community/css/bootstrap.min.css">
<link rel="stylesheet" href="/community/css/animate.min.css">
<link rel="stylesheet" href="/community/css/remixicon.css">
<link rel="stylesheet" href="/community/css/flaticon.css">
<link rel="stylesheet" href="/community/css/jquery-ui.min.css">
<link rel="stylesheet" href="/community/css/magnific-popup.min.css">
<link rel="stylesheet" href="/community/css/simplebar.min.css">
<link rel="stylesheet" href="/community/css/metismenu.min.css">
<link rel="stylesheet" href="/community/css/owl.carousel.min.css">
<link rel="stylesheet" href="/community/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/community/css/style.css">
<link rel="stylesheet" href="/community/css/responsive.css">

<!-- admin템플릿 추가 -->
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

<title>너와 함개</title>

<style type="text/css">
.container {
	padding-top: 5%;
	padding-bottom: 5%;
}

.aaa {
	display: flex;

	/* display: inline-flex; */
}

.form-check {
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	margin-right: 30px;
}

.check-btn {
	background: #e6e6e6;
	border: #e6e6e6;
	color: white;
	height: 44px;
	width: 120px;
	border-radius: 4px;
	font-weight: bold;
	margin-right: 10px;
}

.back-btn {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#back-btn {
	margin-top: 60px;
	background-color:#f8b03a;
}

.select {
	width: 70%;
	text-align: center;
}

#friend-add {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-bottom: 10%;
	
}

.profile-img-size {
	width: 25%;
	margin-top: 5%;
	margin-bottom: 5%;
}

#profile-img-size {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.form-group {
	width:80%;
}
.group-group {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.on{
	background-color:#f8b03a;
}

#friend-add-btn {
	background-color:#f8b03a;
}

.aside-wrapper {
 	display:flex; 
}
</style>

</head>


<body>
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
						<li class="nav-item"><a href="#" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">나의 프로필</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">나의 게시글</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">반려동물</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">펫친관리</i>
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link"
							onmouseover="this.style.color='orange';"
							onmouseout="this.style.color='black'">
								<p>
									<i class="far nav-icon" style="font-weight: bolder;">펫친찾기</i>
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
	</div>	
		

	<div class="content-wrapper">
	
	<div class="container">
	
		<div class="row">
			
		
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="card card " id="box">
					<div class="card-header">
						<h4 class="card-title">친구 프로필</h4>
					</div>
					<div class="card-body">

						<!-- 친구 프로필 이미지 -->
						<div id="profile-img-size">
						<div class="profile-img-size">
							<img src="../../pictures/placeholder/250x250.svg"
								class="card-img-top img-fluid rounded-circle" alt="Team Member">
						</div>
						</div>
						<div id="friend-add">
							<button class="check-btn" id="friend-add-btn" type="button">친구추가</button>
							
						</div>

						<div class="group-group">
						<div class="form-group">
							<label style="font-weight: bold">닉네임</label>

							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa-solid fa-user"></i></span>
								</div>
								<input type="text" class="form-control"
									data-inputmask-alias="datetime"
									data-inputmask-inputformat="dd/mm/yyyy" data-mask=""
									inputmode="numeric">
							</div>
							<!-- /.input group -->
						</div>
						<!-- /.form group -->



						<!-- 111111111111111111111111111111111111111111111111111111 -->
						<div class="form-group">
							<div class="row">
								<label style="font-weight: bold">견종</label>
								<div class="aaa">
									<div class="input-group" style="float: left;">
										<span class="input-group-text"><i
											class="fa-solid fa-bone"></i></span> 
											<select class="form-control" style="float: left;">
											<option>견종 선택</option>
											<c:forEach var="vo" items="${kindList}">
											<option>${vo.dog_kind}</option>
											</c:forEach>
											
											
										</select>
									</div>

								</div>
							</div>
						</div>



						<!-- /.form group -->

						<!-- phone mask -->
						<div class="form-group">
							<label style="font-weight: bold">반려견 이름</label>

							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa-solid fa-dog"></i></span>
								</div>
								<input type="text" class="form-control"
									data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']"
									data-mask="" inputmode="text">
							</div>
							<!-- /.input group -->
						</div>
						<!-- /.form group -->

						<!-- IP mask -->
						<div class="form-group">
							<label style="font-weight: bold">반려견 몸무게</label>

							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa-solid fa-weight-scale"></i></span>
								</div>
								<input type="text" class="form-control"
									data-inputmask="'alias': 'ip'" data-mask="" inputmode="decimal">
							</div>
							<!-- /.input group -->
						</div>
						<!-- /.form group -->

						<!-- 성별 선택란 -->
						<div class="form-group">
							<label style="font-weight: bold">반려견 성별</label>
							<div>
								<button class="check-btn boy">남아</button>
								<button class="check-btn girl">여아</button>
							</div>
						</div>

						<!-- 중성화 여부 선택란 -->
						<div class="form-group">
							<label style="font-weight: bold">중성화 여부</label>
							<div>
								<button class="check-btn yes">했어요</button>
								<button class="check-btn no">안했어요</button>
							</div>
						</div>
						</div>

					</div>
				</div>

			</div>



		</div>

		<div class="back-btn">
			<button class="check-btn" id="back-btn">뒤로가기</button>
		</div>
		<!-- /.card-body -->
	</div> <!-- end of .container -->
	</div>
<!-- 	</div>
	</div>

	</div> -->


</body>

<%@include file="../Footer.jsp"%>

<script src="/community/js/jquery.min.js"></script>
<script src="/community/js/bootstrap.bundle.min.js"></script>
<script src="/community/js/jquery.magnific-popup.min.js"></script>
<script src="/community/js/jquery-ui.min.js"></script>
<script src="/community/js/simplebar.min.js"></script>
<script src="/community/js/metismenu.min.js"></script>
<script src="/community/js/owl.carousel.min.js"></script>
<script src="/community/js/wow.min.js"></script>
<script src="/community/js/main.js"></script>

<!-- admin템플릿 추가 -->
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
		$(document).ready(function(){
			$(".boy").click(function(){
				$(".boy").addClass("on");
				$(".girl").removeClass("on");
			});
			$(".girl").click(function(){
				$(".girl").addClass("on");
				$(".boy").removeClass("on");
			});
			$(".yes").click(function(){
				$(".yes").addClass("on");
				$(".no").removeClass("on");
			});
			$(".no").click(function(){
				$(".no").addClass("on");
				$(".yes").removeClass("on");
			});
			
		});
	</script>
	
	
</html>