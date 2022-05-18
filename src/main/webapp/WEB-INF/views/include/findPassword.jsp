<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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
    
    <!-- userStyle : 안정은 -->
    <link rel="stylesheet" href="../signUpLogin/css/userStyle.css">

    <title>비밀번호 찾기</title>
  </head>
  <body>
  	<%@include file="./Header.jsp" %>
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-10 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3 id="titleCenter"><strong>비밀번호 찾기</strong></h3>
                  <div class="errorBox">
                  <strong><span class="error_box pwSearch"></span></strong>
                  </div>
                  <p class="mb-4"></p>
                </div>
                <form id="pwSearchForm" action="pwChangeForm.do" method="post" name="pwSearchForm">
                
                <!-- EMAIL -->
                  <div class="form-group first field--not-empty">
                    	<label for="memberEmail">이메일</label>
                    	<input type="email" class="form-control" id="memberEmail" name="memberEmail">
                  </div>
                  
                 <!-- NAME -->
                  <div class="form-group first field--not-empty">
                    <label for="memberName">이름&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="text" class="form-control" id="memberName" name="memberName">
                  </div>
                  
                  <!-- TEL -->
                  <div class="form-group first field--not-empty">
                    	<label for="memberTel">휴대전화&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    	<input type="tel" class="form-control" id="memberTel" name="memberTel">
                  </div>
                  
                  <!-- BTN PW CHANGE -->              
                  <input type="button" id="btnPwSearch" value="비밀번호 찾기" class="btn btn-pill text-white btn-block btn-orange" style="background-color:#F8b03a;">
                  <div class="d-flex mb-5 align-items-center" id="homeGO">
                    <label class="control control--checkbox mb-0">
                    	<span class="caption"></span>
                    </label>
                    
                    <!-- BTN LOGIN -->
                 <span class=""><a href="main.do" class="forgot-pass">홈 화면으로 가기</a></span>
                 <span class="ml-auto"><a href="loginForm.do" class="forgot-pass">로그인 하기</a></span> 
                  </div>

                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>
<%@include file="./Footer.jsp" %>

  
  
  <script src="../signUpLogin/js/jquery-3.3.1.min.js"></script>
  <script src="../signUpLogin/js/popper.min.js"></script>
  <script src="../signUpLogin/js/bootstrap.min.js"></script>
  <script src="../signUpLogin/js/main.js"></script>
  <script src="../signUpLogin/js/member.js"></script>
      <script type="text/javascript">
	$(document).ready(function(){
		$(".btn-orange").mouseover(function(){
			$(".btn-orange").css("background-color","#dc6721");
		});
		$(".btn-orange").mouseout(function(){
			$(".btn-orange").css("background-color","#F8b03a");
		});
	})
    </script>
  </body>
</html>