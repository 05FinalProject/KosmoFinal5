<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="memberEmail"%>
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
	
    <title>Login</title>
  </head>
  <body>
  	<%@include file="./Header.jsp" %>

  
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
        <div class="col-md-10 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3 id="titleCenter"><strong>LOGIN</strong></h3>
                  <div class="errorBox">
                  <strong><span class="error_box login"></span></strong>
                  </div>
                  <p class="mb-4"></p>
                </div>
                <form action="loginMove.do" method="post" id="loginForm" name="loginForm">
                  <div class="form-group first field--not-empty" id="CookieEmail">
                    <label for="memberEmail">이메일&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="email" class="form-control" id="memberEmail" name="memberEmail" >
                  </div>
                  <div class="form-group last mb-4 field--not-empty" >
                    <label for="memberPassword">비밀번호&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="password" class="form-control" id="memberPassword" name="memberPassword">
                    
                  </div>
                  
                  <div class="d-flex mb-5 align-items-center">
                    <label class="control control--checkbox mb-0" for="rememberEmail"><span class="caption">이메일 기억하기</span>
                      <!-- 쿠키값이 있으면 체크표시 유지 -->
                    	<memberEmail:if test="${not empty cookie.rememberEmail.value }">
							<memberEmail:set value="checked" var="checked"/>              	
                    	</memberEmail:if>
                       <input type="checkbox" id="rememberEmail" name="rememberEmail" value="true" ${checked }/>
                      <div class="control__indicator"></div>
                    </label>
                  </div>
                  <input type="button" value="로그인" id="btnLogin" class="btn btn-pill text-white btn-block btn-orange" style="background-color:#F8b03a;">
                  <div class="d-flex mb-5 align-items-center" id="homeGO">
                    <label class="control control--checkbox mb-0"><span class="caption"></span>
                    </label>
                    <span class=""><a href="main.do" class="forgot-pass">홈 화면으로 가기</a></span> 
                    <span class="ml-auto"><a href="signupForm.do" class="forgot-pass">회원가입 하기</a></span> 
                    &nbsp;&nbsp;<span class="colorChange">|</span>&nbsp;&nbsp;
                    <span class=""><a href="pwSearchForm.do" class="forgot-pass">비밀번호 찾기</a></span> 
                  </div>

                  <!-- <span class="d-block text-center my-4 text-muted"> or sign in with</span>
                  
                  <div class="social-login text-center">
                    <a href="#" class="facebook">
                      <span class="icon-facebook mr-3"></span> 
                    </a>
                    <a href="#" class="twitter">
                      <span class="icon-twitter mr-3"></span> 
                    </a>
                    <a href="#" class="google">
                      <span class="icon-google mr-3"></span> 
                    </a>
                  </div> -->
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