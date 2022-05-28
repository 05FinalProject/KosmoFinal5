<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Contacts</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="/admin/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/admin/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="/admin/plugins/summernote/summernote-bs4.min.css">
<script src="https://kit.fontawesome.com/23b331c6f8.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/adminlte.min.css">

<style type="text/css">
.lead {
	margin-top: 10px;
}

.agencyImg{
	border-radius:20px;
	margin-top: 20px;
}

.agencyCon{
	margin-top: 30px;

}
</style>

</head>
<body class="hold-transition sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">

		<%@ include file="../../admin/common/adminNavbar.jsp"%>
		<%@ include file="../../admin/common/adminSidebar.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>장례식장</h1>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="card card-solid">
					<div class="card-body pb-0">
					
						<div class="row">
						<c:forEach items="${paging}" var="funeralhall"> 
							<div
								class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
								<div class="card bg-light d-flex flex-fill">
									<div class="card-body pt-0">
										<div class="row">
											<div class="col-7 agencyCon">
												<h2 class="lead">
													<b>${funeralhall.agencyName}</b>
												</h2>
												<p class="text-muted text-sm">
													<b>About: </b> ${funeralhall.agencyContent}
												</p>
												<ul class="ml-4 mb-0 fa-ul text-muted">
													<li class="small"><span class="fa-li"><i
															class="fas fa-lg fa-building" aria-hidden="true"></i></span>
														Address: ${funeralhall.agencyAddress}</li>
													<li class="small"><span class="fa-li"><i
															class="fas fa-lg fa-phone" aria-hidden="true"></i></span> Phone
														#: ${funeralhall.agencyTel}</li>
												</ul>
											</div>
										
										</div>
									</div>
									<div class="card-footer">
										<div class="text-right">
										<a class="btn btn-sm btn-warning" data-toggle="modal" data-target="#funeralhallModal${funeralhall.agencyNum}">수정 </a>													
										<a href="#" class="btn btn-sm btn-danger"> 삭제 </a>
										</div>
									</div>									
								</div>							
							</div>											
							<!-- Modal -->
								<div class="modal fade" id="funeralhallModal${funeralhall.agencyNum}"
									tabindex="-1"
									aria-labelledby="funeralhallModal${funeralhall.agencyNum}Label"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title"
													id="funeralhallModal${funeralhall.agencyNum}Label">${funeralhall.agencyName}
												</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<!-- form start -->
											<div class="modal-body">
												<div class="container-fluid">
													<div class="row">
														<form action="" method="post">
															<div class="row">
																<div class="mb-3 col-md-6">
																	<label for="exampleFormControlInput1"
																		class="form-label">기관선택</label>
																	<div class="form-group">
																		<select class="form-control">
																			<!-- 선택을 안하면 입력이 안되게 설정해야함(나중에)... -->
																			<option>보호소</option>
																			<option>동물병원</option>
																			<option>애견호텔</option>
																			<option>장례식장</option>
																			<option>애견카페</option>
																		</select>
																	</div>
																</div>

																<div class="mb-3 col-md-6">
																	<label for="exampleFormControlInput1"
																		class="form-label">시설명</label> 
																	<input type="text"
																		class="form-control" id="exampleFormControlInput1"
																		name="facility">
																</div>

																<div class="mb-3 col-md-12">
																<label for="exampleFormControlInput1"
																		class="form-label">시설주소</label> 
																	<input type="text" id="sample6_postcode"
																		placeholder="우편번호" class="form-control"> 										
																	<input type="button"
																		onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-block btn-secondary"><br>
																	<input type="text" id="sample6_address"
																		placeholder="주소" class="form-control"><br> <input type="text"
																		id="sample6_detailAddress" placeholder="상세주소" class="form-control">
																	<input type="text" id="sample6_extraAddress"
																		placeholder="참고항목" class="form-control">
																</div>

																<div class="mb-3 col-md-12">
																	<label for="exampleFormControlInput1"
																		class="form-label">전화번호</label> <input type="text"
																		class="form-control" id="exampleFormControlInput1"
																		name="tel">
																</div>

																<div class="mb-3 col-md-12">
																	<label for="exampleFormControlTextarea1"
																		class="form-label">소개글</label>
																	<textarea class="form-control"
																		id="exampleFormControlTextarea1" rows="3"
																		placeholder="내용을 입력해주세요" name="content"></textarea>
																</div>

																<div class="mb-3 col-md-12">
																	<label for="exampleInputPassword1" class="form-label">이미지
																		첨부</label>
																	<div class="custom-file">
																		<input type="file" class="custom-file-input"
																			id="customFile"> <label
																			class="custom-file-label" for="customFile">Choose
																			file</label>
																	</div>
																</div>

																<div class="modal-footer">
																	<button type="submit" class="btn btn-secondary m-2"
																		id="btnQnAWrite">수정</button>
																	<button type="button" class="btn btn-secondary m-2"
																		id="btnList" data-dismiss="modal">취소</button>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<!-- /.card-body -->
				<div class="card-footer">
					<nav aria-label="Contacts Page Navigation">
						<ul class="pagination justify-content-center m-0">
							<c:set var="recordsCnt" value="${count}" />
							<c:set var="jspFile" value="adminFuneralhall?"/>
							<c:set var="perpage" value="9" />
						</ul>
						<%@include file="paging.jsp"%>
					</nav>
				</div>
				<!-- /.card-footer -->
			</div>
		<!-- /.card -->
		<%@ include file="../../admin/common/adminFooter.jsp"%>
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	
	<!-- jQuery -->
	<script src="../../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>

	<!-- jQuery -->
	<script src="/admin/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="/admin/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="/admin/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="/admin/plugins/moment/moment.min.js"></script>
	<script src="/admin/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="/admin/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/admin/dist/js/adminlte.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/admin/dist/js/pages/dashboard.js"></script>
	<script type="text/javascript">
		$('#facilities').addClass('menu-is-opening')
		$('#facilities').addClass('menu-open')
		$('#funeralhall').addClass('active')
	</script>
</body>
</html>

