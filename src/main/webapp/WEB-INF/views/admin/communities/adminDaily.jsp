<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | 커뮤니티관리</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/admin/plugins/fontawesome-free/css/all.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake" src="/admin/dist/img/AdminLTELogo.png"
				alt="AdminLTELogo" height="60" width="60">
		</div>

		<%@ include file="../../admin/common/adminNavbar.jsp"%>

		<%@ include file="../../admin/common/adminSidebar.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">커뮤니티관리</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="/admin">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<div class="card">
				<div class="card-header">
					<h3 class="card-title">일상공유</h3>
				</div>
				<!-- /.card-header -->
				<div class="card-body">
					<table id="example2" class="table table-bordered table-hover">
						<thead>
							<tr>
								<th width="70">제목</th>
								<th width="50">작성자</th>
								<th>내용</th>
								<th>날짜</th>
								<th width="50">삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${communityList}" var="community">
								<tr>
									<td>${community.communityTitle}</td>
									<td>${community.user.userNickname}</td>
									<td>${community.communityContent}</td>
									<td>${community.communityInsertdate}</td>							
									<td>
										<form action="/adminDaily">
											<input type="hidden" name="communityNum"
												value="${community.communityNum}" />
											<button type="submit" class="btn btn-outline-danger">삭제</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- /.card-body -->
			</div>
		</div>

		<!-- Main content -->

		<%@ include file="../../admin/common/adminFooter.jsp"%>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<!-- jQuery -->
	<script src="/admin/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables  & Plugins -->
	<script src="/admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="/admin/plugins/jszip/jszip.min.js"></script>
	<script src="/admin/plugins/pdfmake/pdfmake.min.js"></script>
	<script src="/admin/plugins/pdfmake/vfs_fonts.js"></script>
	<script src="/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script src="/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script
		src="/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/admin/dist/js/adminlte.min.js"></script>
	<!-- Page specific script -->
	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						 "info": false,
					}),
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : true,
				"ordering" : true,
				"info" : false,
				"autoWidth" : false,
				"responsive" : true,
			});
		});
		
		  $('#communities').addClass('menu-is-opening')
		  $('#communities').addClass('menu-open')
		  $('#daily').addClass('active')
	</script>
</body>
</html>