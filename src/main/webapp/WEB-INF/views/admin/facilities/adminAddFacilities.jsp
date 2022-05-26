<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="../../dist/css/admin.css">
<style type="text/css">
.form1{
	display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center;

}

.form2{
   margin-top: 30px;
}

</style>
</head>
<body class="hold-transition sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">
	
	 <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

		<%@ include file="../../admin/common/adminNavbar.jsp"%>

		<%@ include file="../../admin/common/adminSidebar.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		 
			<!-- Content Header (Page header) -->
			
			
			<section class="content-header">				
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1>시설등록</h1>
							</div>
						</div>
					</div>					
					<!-- /.container-fluid -->
			</section>
			<div class="card form1">
 		<div class="col-md-6 form2">
			<div class="card card-primary">
				<div class="card-header">
					<h3 class="card-title">시설등록</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="" method="post">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">시설명</label>
						<div class="form-group">
							<select class="form-control">
								<option>보호소</option>
								<option>동물병원</option>
								<option>애견호텔</option>
								<option>장례식장</option>
								<option>애견카페</option>
							</select>
						</div>
					</div>

					<div class="mb-3">
						<div>
							<label for="exampleFormControlInput1" class="form-label">주소</label>
						</div>

						<input type="text" id="sample6_postcode" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()"
							value="우편번호 찾기"><br> <input type="text"
							id="sample6_address" placeholder="주소"><br> <input
							type="text" id="sample6_detailAddress" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" placeholder="참고항목">
					</div>

					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">전화번호</label>
						<input type="text" class="form-control"
							id="exampleFormControlInput1" name="tel">
					</div>

					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">소개글</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="내용을 입력해주세요" name="content"></textarea>
					</div>



					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">이미지
							첨부</label>
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="customFile">
							<label class="custom-file-label" for="customFile">Choose
								file</label>
						</div>
					</div>

					<button type="submit" class="btn btn-secondary m-2"
						id="btnQnAWrite">수정</button>
					<a href="/admin/adminShelter"><button type="button"
							class="btn btn-secondary m-2" id="btnList">목록보기</button></a>
				</form>
			</div>
			</div>
		</div>
		</div>
		<%@ include file="../../admin/common/adminFooter.jsp"%>

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
		$('#shelter').addClass('active')
	</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>
</body>
</html>

