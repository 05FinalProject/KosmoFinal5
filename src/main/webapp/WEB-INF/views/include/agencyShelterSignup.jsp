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
	<%@include file="./Header.jsp" %>
	
	
	
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
										
                                   <%--   <input name="abNo" type="hidden"  value="${vo.abNo }" />  --%>
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
								        
								   
										<a onclick="alert('입양 신청이 되었습니다.');"  href="/include/agencyShelter"><input type="button" value="입양하기" id="btnSignUp" class="btn btn-pill btn-block text-white btn-orange" style="background-color:#F8b03a; color:white;" ></a>
										<div class="d-flex mb-5 align-items-center" id="homeGO">
											<label class="control control--checkbox mb-0"><span class="caption"></span>
											</label>
										</div>
								</div>
								
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		
		
		
		
		
		<%@include file="./Footer.jsp" %>

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
		<script> 
		/*주소 찾기*/
			//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function execPostCode() {
          new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            	var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
                
                
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
                
            }
        }).open();
    }

		</script>
	</body>

	</html>