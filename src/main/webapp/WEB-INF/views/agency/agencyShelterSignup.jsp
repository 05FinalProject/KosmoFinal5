<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

		<link rel="stylesheet" href="../signUpLogin/fonts/icomoon/style.css">

		<link rel="stylesheet" href="../signUpLogin/css/owl.carousel.min.css">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../signUpLogin/css/bootstrap.min.css">

		<!-- Style -->
		<link rel="stylesheet" href="../signUpLogin/css/style.css">

		<link rel="stylesheet" href="../signUpLogin/css/userStyle.css">

		<title>회원가입 </title>
	</head>

	<body>
	 <%@include file="/WEB-INF/views/include/Header.jsp" %>
	
	
	
		<div class="content">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10 contents">
						<div class="row justify-content-center">
							<div class="col-md-10">
								<div class="form-block" style="border-radius:20px;">
									<div class="mb-4">
										<h3 id="titleCenter"><strong>반려동물 입양 계약서</strong></h3>
									</div>

									<!-- FORM  ******************************************************* -->
									<form id="member_frm" action="signUpSuccess" method="post" name="member_frm">
										
                                   
										<!-- PW -->
										<h5 id="titleCenter"><strong>반려동물의 표시</strong></h5>
										<div class="form-group first field--not-empty">
											<label for="userPass">품종&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userPass"
												name="userPass" value="${signup.abKind }">
										</div>

									    <!-- NAME -->
										<div class="form-group first field--not-empty">
											<label for="userName">이름&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userName" name="userName" value="${signup.abName}">
											
										</div>
										
										<!-- NAME -->
										<div class="form-group first field--not-empty">
											<label for="userName">개월수&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userName" name="userName" value="${signup.abAge}">
										</div>


                                        <!-- NAME -->
										<div class="form-group first field--not-empty">
											<label for="userName">성별&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userName" name="userName" value="${signup.abGender}">
										</div>
										
										<br/>
									</form>
								   
								   <!--  1번째 끝************************************************************** -->       
                                    
								    
								    <!--  2번째 시작********************************************************* -->  
								    <c:if test="${empty sessionScope.userEmail }"></c:if>
								    
								    <c:if test="${not empty sessionScope.userEmail  }">
								        <h5 id="titleCenter"><strong>입양 신청자(이하 입양자)</strong></h5>
								        <div class="form-group first field--not-empty">
											<label for="userName">성명&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userName" name="userName" value="<%= session.getAttribute("userName") %>"> 
										</div>		
								        
								        <div class="form-group first field--not-empty">
											<label for="userName">전화 번호&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userName" name="userName" value="<%= session.getAttribute("userPhone") %>">
										</div>		
								        
								    
								        <div class="form-group first field--not-empty">
											<label for="userName">이메일&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="userName" name="userName" value="<%= session.getAttribute("userEmail") %>">
										</div>		
								        
								   
										<a onclick="alert('입양 신청이 되었습니다.');"  href="/agency/agencyShelter"><input type="button" value="입양하기" id="btnSignUp" class="btn btn-pill btn-block text-white btn-orange" style="background-color:#F8b03a; color:white;" ></a>
										<div class="d-flex mb-5 align-items-center" id="homeGO">
											<label class="control control--checkbox mb-0"><span class="caption"></span>
											</label>
										</div>
										</c:if>
								</div>
								
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		
		
		
		
		
		<%@include file="/WEB-INF/views/include/Footer.jsp" %>

		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
		<script src="../signUpLogin/js/popper.min.js"></script>
		<script src="../signUpLogin/js/bootstrap.min.js"></script>
		<script src="../signUpLogin/js/main.js"></script>
		<script src="../signUpLogin/js/member.js"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				$("#termsService").change(function () {
					if ($(this).is(":checked")) {
						$("#agreeForm").css("display", "block")
					} else {
						$("#agreeForm").css("display", "none")
					}
				});
				$("#btnSignUp").mouseover(function(){
					$("#btnSignUp").css("background-color","#dc6721");
				});
				$(".btn-orange").mouseout(function(){
					$(".btn-orange").css("background-color","#F8b03a");
				});
				
				$(".Addr").mouseover(function(){
					$(".Addr").css("background-color","#dc6721");
				});
				$(".Addr").mouseout(function(){
					$(".Addr").css("background-color","#F8b03a");
				});
				
				$("#btnEmailCheck").mouseover(function(){
					$("#btnEmailCheck").css("background-color","#dc6721");
				});
				$("#btnEmailCheck").mouseout(function(){
					$("#btnEmailCheck").css("background-color","#F8b03a");
				});
				
				$("#btnNicknameCheck").mouseover(function(){
					$("#btnNicknameCheck").css("background-color","#dc6721");
				});
				$("#btnNicknameCheck").mouseout(function(){
					$("#btnNicknameCheck").css("background-color","#F8b03a");
				});

			});
		</script>
		
	</body>

	</html>