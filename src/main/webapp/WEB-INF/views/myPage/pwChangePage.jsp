<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../signUpLogin/fonts/icomoon/style.css">
    <link rel="stylesheet" href="../signUpLogin/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../signUpLogin/css/bootstrap.min.css">
    <link rel="stylesheet" href="../signUpLogin/css/style.css">
    <link rel="stylesheet" href="../signUpLogin/css/userStyle.css">
	<style>
	.pbtn {
    display: inline-block;
    font-weight: 400;
    color: #212121;
    text-align: center;
    vertical-align: middle;
    user-select: none;
    padding: 1rem 2rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.5rem;
    }
	</style>
	
    <title>비밀번호 찾기</title>
  </head>
  <body>
  	<%@include file="/WEB-INF/views/include/Header.jsp" %>
  	
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3  id="titleCenter"><strong>비밀번호 재설정</strong></h3>
                 <span class="error_box pwSearch"></span>
                  <p class="mb-4"></p>
                </div>
                <form action="pwChange">

                
                <!-- PW -->
                  <div class="form-group first field--not-empty">
                    <label for="userPass">비밀번호&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="password" class="form-control" id="userPass" name="userPass" >
                  </div>
                  
                 <!-- PW CHECK -->
                  <div class="form-group first field--not-empty">
                    <label for="userPassCheck">비밀번호 재확인 &nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="password" class="form-control" id="userPassCheck" >
                  </div>
                  
                  <!-- BTN PW CHANGE -->              
                  <input type="submit" id="btnPwChange" value="비밀번호 재설정" class="pbtn btn-pill text-white btn-block btn-orange">
                  <div class="d-zddlex mb-5 align-items-center" id="homeGO">
                    <label class="control controlx--checkbox mb-0">
                    	<span class="caption"></span>
                    </label>
                    
                    <!-- BTN LOGIN -->
                    <span class=""><a href="/include/Main" class="forgot-pass">홈 화면으로 가기</a></span>
                    <span class="ml-auto" style="float:right"><a href="/myPage/myPageProfile" class="forgot-pass">뒤로 가기</a></span> 
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<%@include file="/WEB-INF/views/include/Footer.jsp" %>



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
	
       function check_pw(){
 
            var pw = document.getElementById('pw').value;
            var check_SC = 0;
 
            
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.';
                    document.getElementById('check').style.color="#4ABA99";
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color="#ED7A64";
                }
            }
        }
     
</script>
    </script>
  </body>
</html>