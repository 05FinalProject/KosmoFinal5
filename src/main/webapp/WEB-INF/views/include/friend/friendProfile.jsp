<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>너와 함개</title>

<style type="text/css">
</style>



</head>


<body>
	<%@include file="../Header.jsp"%>
	<div class="container">
		<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10 ">
			<div class="card card-danger " id="box">
				<div class="card-header">
					<h3 class="card-title">친구 프로필</h3>
				</div>
				<div class="card-body">
					<!-- Date dd/mm/yyyy -->
					<div class="form-group">
						<label>Date masks:</label>

						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i
									class="far fa-calendar-alt"></i></span>
							</div>
							<input type="text" class="form-control"
								data-inputmask-alias="datetime"
								data-inputmask-inputformat="dd/mm/yyyy" data-mask=""
								inputmode="numeric">
						</div>
						<!-- /.input group -->
					</div>
					<!-- /.form group -->

					<!-- Date mm/dd/yyyy -->
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i
									class="far fa-calendar-alt"></i></span>
							</div>
							<input type="text" class="form-control"
								data-inputmask-alias="datetime"
								data-inputmask-inputformat="mm/dd/yyyy" data-mask=""
								inputmode="numeric">
						</div>
						<!-- /.input group -->
					</div>
					<!-- /.form group -->

					<!-- phone mask -->
					<div class="form-group">
						<label>US phone mask:</label>

						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-phone"></i></span>
							</div>
							<input type="text" class="form-control"
								data-inputmask="&quot;mask&quot;: &quot;(999) 999-9999&quot;"
								data-mask="" inputmode="text">
						</div>
						<!-- /.input group -->
					</div>
					<!-- /.form group -->

					<!-- phone mask -->
					<div class="form-group">
						<label>Intl US phone mask:</label>

						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-phone"></i></span>
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
						<label>IP mask:</label>

						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-laptop"></i></span>
							</div>
							<input type="text" class="form-control"
								data-inputmask="'alias': 'ip'" data-mask="" inputmode="decimal">
						</div>
						<!-- /.input group -->
					</div>
					<!-- /.form group -->

				</div>
				<!-- /.card-body -->
			</div>
		</div>
		</div>
	</div>

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
</html>