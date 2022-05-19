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
	height: 33px;
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

</style>

</head>


<body>
	<%@include file="../Header.jsp"%>
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
							<input type="file" id="file" style="display: none;">
						</div>

					</ul>
				</nav>
			</div>
			<!-- /.sidebar -->

		</aside>
	<div class="container">
	
	
	
	
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="card card-danger " id="box">
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
											class="fa-solid fa-bone"></i></span> <select class="form-control"
											style="float: left;">
											<option>=== 견종 선택 ===</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
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