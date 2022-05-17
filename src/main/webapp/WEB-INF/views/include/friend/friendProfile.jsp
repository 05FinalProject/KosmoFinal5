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
	padding-top: 50px;
	padding-bottom: 50px;
}

.form-check {
	display:flex;
	flex-direction:row;
	justify-content:flex-start;
	margin-right:30px;
}

.check-btn {
	background: #f8b03a;
    border: #f8b03a;
    color: white;
    height: 33px;
    width: 120px;
    border-radius: 4px;
    font-weight: bold;
}

</style>

</head>


<body>
	<%@include file="../Header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="card card-danger " id="box">
					<div class="card-header">
						<h4 class="card-title">친구 프로필</h4>
					</div>
					<div class="card-body">
						<!-- Date dd/mm/yyyy -->
						<div class="form-group">
							<label style="font-weight:bold">닉네임</label>

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
							<label style="font-weight:bold">견종</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="fa-solid fa-bone"></i></span>
								</div>
								<select class="form-control">
									<option>option 1</option>
									<option>option 2</option>
									<option>option 3</option>
									<option>option 4</option>
									<option>option 5</option>
								</select>
							</div>
							
							<!-- 111111111111111111111111111111111111111111111111111111 -->
						<div class="form-group">
                        <label>Select</label>
                        <select class="form-control">
                          <option>option 1</option>
                          <option>option 2</option>
                          <option>option 3</option>
                          <option>option 4</option>
                          <option>option 5</option>
                        </select>
                      </div>
						
						
						<!-- /.form group -->

						<!-- phone mask -->
						<div class="form-group">
							<label style="font-weight:bold">반려견 이름</label>

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
							<label style="font-weight:bold">반려견 몸무게</label>

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
							<label style="font-weight:bold">반려견 성별</label>
							<div>
								<button class="check-btn">남아</button>
								<button class="check-btn">여아</button>
							</div>
						</div>
						
						<!-- 중성화 여부 선택란 -->
						<div class="form-group">
							<label style="font-weight:bold">중성화 여부</label>
							<div>
								<button class="check-btn">했어요</button>
								<button class="check-btn">안했어요</button>
							</div>
						</div>
						
                      </div>
                    </div>
          
                  </div>
						
					

					</div>
					
					<div>
						<button>취소</button>
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