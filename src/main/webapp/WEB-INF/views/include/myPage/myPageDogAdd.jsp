<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="../../signUpLogin/css/petStyle.css">

</head>
<body class="hold-transition sidebar-mini layout-fixed "
	style="background-color: #f4f6f9;">
	<%@include file="../Header.jsp"%>
	<div class="wrapper">
		<!-- Main Sidebar Container -->
		<aside class="myPage-sidebar asidebar beta">
			<div class="sidebar">
				<div class="user-panel mt-3 pb-3 mb-3 d-flex"></div>
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">

						<!-- 마이 프로필 -->
						<li class="nav-item"><a href="/include/myPage/myPageProfile" class="nav-link">
								<p>마이 프로필</p>
						</a></li>

						<!-- 나의 게시글 -->
						<li class="nav-item"><a href="/include/myPage/myPageBoard" class="nav-link">
								<p>나의 게시글</p>
						</a></li>

						<!-- 반려동물 -->
						<li class="nav-item"><a href="/include/myPage/myPageDogList"
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
						<li class="nav-item"><a href="#" class="nav-link">
								<p>나의 산책로</p>
						</a></li>

					</ul>
				</nav>
			</div>
		</aside>

		<!-- Content Wrapper. Contains page content -->

		<section>
			<!-- Default box -->
			<form method="post" action="petAdd" id="petFrm" name="petFrm">
				<div class="card-solid mx-auto" style="width: 80%;">
					<div class="card-body">
						<div class="row" style="margin-top: 5%;">


							<div class="col-12 col-sm-7">

								<div id="root">
									<div class="contents">
										<div class="upload-box">
											<div id="drop-file" class="drag-file">
												<img
													src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
													alt="파일 아이콘" class="image">
												<p class="message">Drag files to upload</p>
												<img src="" alt="미리보기 이미지" class="preview">
											</div>
											<label class="file-label" for="chooseFile">이미지</label> <input class="file" id="chooseFile" type="file"
												onchange="dropFile.handleFiles(this.files)"
												accept="image/png, image/jpeg, image/gif">
										</div>
									</div>
								</div>

							</div>



							<div class="col-12 col-sm-5">
								<input type="text" placeholder="이름" id="petName">
								<hr>
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
									<table>
										<tr>
											<th>견&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종 :</th>
											<th style="height: 50%;"><select class="form-controller"
												style="float: left;">
													<c:forEach var="vo" items="${kindList}">
														<option>${vo.dogKind}</option>
													</c:forEach>

											</select></th>
										</tr>
										<tr>
											<th>몸무게 :</th>
											<th><input type="text" placeholder="kg" id="petWeight">kg</th>
										</tr>
										<tr>
											<th>성별 :</th>
											<th><label class="btn btn-default text-center active"
												value="M"> 남아 <br> <i
													class="fas fa-user fa text-blue"></i>
											</label> <label class="btn btn-default text-center" value="Y">
													여아 <br> <i class="fas fa-user fa text-red"></i>
											</label></th>
										</tr>
										<tr>
											<th>중성화 :</th>
											<th><label class="btn btn-default text-center active"
												value="Y"> 했어요 <br> <i
													class="fas fa-dot-circle fa text-green"></i>
											</label> <label class="btn btn-default text-center" value="N">
													안했어요 <br> <i
													class="fas fa-times-circle fa text-orange"></i>
											</label></th>
										</tr>

									</table>
								</div>


								<div class="mt-4">
									<div class="btn btn-primary btn-flat btn-aadd ">
										<input type="submit" value="등록">
									</div>

									<div class="btn btn-danger btn-flat float-right">
										<input type="button" value="취소">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

		</section>



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

			
			function DropFile(dropAreaId, fileListId) {
				  let dropArea = document.getElementById(dropAreaId);
				  let fileList = document.getElementById(fileListId);

				  function preventDefaults(e) {
				    e.preventDefault();
				    e.stopPropagation();
				  }

				  function highlight(e) {
				    preventDefaults(e);
				    dropArea.classList.add("highlight");
				  }

				  function unhighlight(e) {
				    preventDefaults(e);
				    dropArea.classList.remove("highlight");
				  }

				  function handleDrop(e) {
				    unhighlight(e);
				    let dt = e.dataTransfer;
				    let files = dt.files;

				    handleFiles(files);

				    const fileList = document.getElementById(fileListId);
				    if (fileList) {
				      fileList.scrollTo({ top: fileList.scrollHeight });
				    }
				  }

				  function handleFiles(files) {
				    files = [...files];
				    // files.forEach(uploadFile);
				    files.forEach(previewFile);
				  }

				  function previewFile(file) {
				    console.log(file);
				    renderFile(file);
				  }

				  function renderFile(file) {
				    let reader = new FileReader();
				    reader.readAsDataURL(file);
				    reader.onloadend = function () {
				      let img = dropArea.getElementsByClassName("preview")[0];
				      img.src = reader.result;
				      img.style.display = "block";
				    };
				  }

				  dropArea.addEventListener("dragenter", highlight, false);
				  dropArea.addEventListener("dragover", highlight, false);
				  dropArea.addEventListener("dragleave", unhighlight, false);
				  dropArea.addEventListener("drop", handleDrop, false);

				  return {
				    handleFiles
				  };
				}

				const dropFile = new DropFile("drop-file", "files");
		});
	</script>
</body>
</html>

