
	
/**
*	유효성 검사 정규식
 */
var RegexNick = /^[가-힣a-zA-Z0-9]{1,10}$/;
var RegexEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
var RegexPW =/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/;
var RegexName = /^[가-힣]+$/;
var RegexTel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{3,4})$/;


// 에러박스 문구
var blank = "필수 입력 사항입니다.";

/*********************************************************************
	[ 회원가입 페이지 ]
	이메일 중복 버튼 클릭 이벤트
*/
var emailCheck = false;
$('#btnEmailCheck').click(function(){
	// 이메일 중복검사 확인 여부
	
	$('label[for="userEmail"] .error_box').html("");
	var userEmail = $.trim($("#userEmail").val());
	
	// 입력값이 없을 때 에러박스
	if(userEmail == ''){

		$('label[for="userEmail"] .error_box').html(blank);
		return false;

	}
	// 형식에 맞지 않을 때 나오는 에러박스
	if( !RegexEmail.test(userEmail) ){
		$('label[for="userEmail"] .error_box').css('color','#ED7A64');
		$('label[for="userEmail"] .error_box').html("이메일 형식이 올바르지 않습니다.");
		return;
	}
	
	// 이메일 중복 검사 - DB와 비교
 	  $.ajax({
    	type : 'post',
    	url : 'emailCheck',
    	data : { userEmail : $('#userEmail').val() },
    	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
    	success : function(result){
    		
    		// 중복 검사 후 나오는 결과 에러박스에 출력
    		if(result == 'Y'){
	        		$('label[for="userEmail"] .error_box').css('color','#4ABA99');
	        		$('label[for="userEmail"] .error_box').html("사용 가능한 이메일입니다.");
	        		emailCheck = true;
				}else{
	        		$('label[for="userEmail"] .error_box').css('color','#ED7A64');
	        		$('label[for="userEmail"] .error_box').html("사용할 수 없는 이메일입니다.");
	        		emailCheck = false;
				}
    	},
    	error : function(err){
			alert('실패');
    		console.log(err);
    	}
    }); //end of ajax
}); // end of $('#btn_emailCheck').click

/*********************************************************************
	[ 회원가입 페이지 ]
	닉네임 중복 버튼 클릭 이벤트
*/
var nicknameCheck = false;
$('#btnNicknameCheck').click(function(){
	// 닉네임 중복검사 확인 여부
	
	$('label[for="userNickname"] .error_box').html("");
	var userNickname = $.trim($("#userNickname").val());
	
	// 입력값이 없을 때 에러박스
	if(userNickname == ''){

		$('label[for="userNickname"] .error_box').html(blank);
		return false;

	}
	// 형식에 맞지 않을 때 나오는 에러박스
	if( !RegexNick.test(userNickname) ){
		$('label[for="userNickname"] .error_box').css('color','#ED7A64');
		$('label[for="userNickname"] .error_box').html("닉네임 형식이 올바르지 않습니다.");
		return;
	}
	
	// 닉네임 중복 검사 - DB와 비교
 	  $.ajax({
    	type : 'post',
    	url : 'nicknameCheck',
    	data : { userNickname : $('#userNickname').val() },
    	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
    	success : function(result){
    		
    		// 중복 검사 후 나오는 결과 에러박스에 출력
    		if(result == 'Y'){
	        		$('label[for="userNickname"] .error_box').css('color','#4ABA99');
	        		$('label[for="userNickname"] .error_box').html("사용 가능한 닉네임입니다.");
	        		nicknameCheck = true;
				}else{
	        		$('label[for="userNickname"] .error_box').css('color','#ED7A64');
	        		$('label[for="userNickname"] .error_box').html("사용할 수 없는 닉네임입니다.");
	        		nicknameCheck = false;
				}
    	},
    	error : function(err){
			alert('실패');
    		console.log(err);
    	}
    }); //end of ajax
}); // end of $('#btn_nicknameCheck').click



/*
	회원가입 버튼 클릭 -> 필수 입력 사항 + 유효성 검사
*/
$('#btnSignUp').click(function(){

	// input에 입력된 값을 공백제거하고 변수에 담기
	var userNickname = $.trim($("#userNickname").val());
	var userEmail = $.trim($("#userEmail").val());
	var userPass = $.trim($("#userPass").val());
	var userPassCheck = $.trim($("#userPassCheck").val());
	var userName = $.trim($("#userName").val());
	var userGender = $.trim($("#userGender").val());
	var userPhone = $.trim($("#userPhone").val());
	
	/* 닉네임 */
	if(userNickname == ''){
		$('label[for="userNickname"] .error_box').html(blank);
		$('#userNickname').focus();
    		return;
		}else{
		$('label[for="userNickname"] .error_box').html("");
		}		
	
	if( !RegexNick.test(userNickname) ){

		$('label[for="userNickname"] .error_box').html("한글, 영문 그리고 숫자만 입력 가능합니다.");
		return;
	}else{
		$('label[for="userNickname"] .error_box').html("");
		}
	
	
	/* 이메일 */
	if(userEmail == ''){
		$('label[for="userEmail"] .error_box').html(blank);
		$('#userEmail').focus();
    		return;
		}else{
		$('label[for="userEmail"] .error_box').html("");
		}	
	
	if( !RegexEmail.test(userEmail) ){

		$('label[for="userEmail"] .error_box').html("이메일 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="userEmail"] .error_box').html("");
		}
	
	/* 비밀번호 */
	if(userPass == ''){
		$('label[for="userPass"] .error_box').html(blank);
		$('#userPass').focus();
    		return;
		}else{
		$('label[for="userPass"] .error_box').html("");
		}
	
	if( !RegexPW.test(userPass) ){

		$('label[for="userPass"] .error_box').html("비밀번호는 영문자와 숫자를 사용하여 6~15자로 작성해 주십시오.");
		return;
	}else{
		$('label[for="userPass"] .error_box').html("");
		}
	
	/* 비밀번호 재확인 */
	if(userPassCheck == ''){
		$('label[for="userPassCheck"] .error_box').html("필수 입력 사항입니다.");
		$('#userPassCheck').focus();
    		return;
		}else{
		$('label[for="userPassCheck"] .error_box').html("");
		}
	
	/* 비밀번호 일치 여부 확인 */
	if(userPass != userPassCheck){
		$('label[for="userPassCheck"] .error_box').html("비밀번호가 일치하지 않습니다.");
		$('#userPassCheck').focus();
		return;
	}
	
	/* 이름 */
	if(userName == ''){
		$('label[for="userName"] .error_box').html(blank);
		$('#userName').focus();
    		return;
		}else{
		$('label[for="userName"] .error_box').html("");
		}
	if( !RegexName.test(userName) ){

		$('label[for="userName"] .error_box').html("한글만 입력 가능합니다.");
		return;
	}else{
		$('label[for="userName"] .error_box').html("");
		}
		
	
	/* 휴대전화 */
	if(userPhone == ''){
		$('label[for="userPhone"] .error_box').html(blank);
		$('#userPhone').focus();
    		return false;
		}else{
		$('label[for="userPhone"] .error_box').html("");
		}
	if( !RegexTel.test(userPhone) ){

		$('label[for="userPhone"] .error_box').html("전화번호 형식이 올바르지 않습니다. ex)010-000~0-000~0");
		return;
	}else{
		$('label[for="userPhone"] .error_box').html("");
		}
	
	// 닉네임 중복 여부 체크 했는지 확인
	if( !nicknameCheck ){
		$('label[for="userNickname"] .error_box').html("닉네임 중복 여부를 확인해주세요.");
		return;
	}else {
		$('label[for="userNickname"] .error_box').html("");
	}
	
	// 이메일 중복 여부 체크 했는지 확인
	if( !nicknameCheck ){
		$('label[for="userEmail"] .error_box').html("이메일 중복 여부를 확인해주세요.");
		return;
	}else {
		$('label[for="userEmail"] .error_box').html("");
	}
	
	
	//이용약관에 체크 했는지 확인
	if( $("#agreeForm").css("display")=="none"){
		// 체크 X
		alert("약관에 동의를 요청합니다.");
		return;
	}else if($("#agreeForm").css("display")=="block"){
		// 체크 O
		alert("동의가 완료되었습니다.");
		$("btnSignUp").attr("disabled", false);
		$('#agreeForm').next().html("");
		$.ajax({
			    	type : 'post',
			    	url : 'emailCheck',
			    	data : { userEmail : $('#userEmail').val() },
			    	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			    	success : function(result){
			    		// 중복 검사 후 나오는 결과 에러박스에 출력
			    		if(result == 'Y'){
			    			$('label[for="userEmail"] .error_box').html("");
				        		document.member_frm.submit();
				        		alert("회원가입이 되었습니다.");
							}else{
				        		$('label[for="userEmail"] .error_box').css('color','#ED7A64');
								$('label[for="userEmail"] .error_box').html("이메일 중복 여부를 확인해주세요.");
				        		emailCheck = false;
				        		return;
							}
			    	},
			    	error : function(err){
						alert('실패');
			    		console.log(err);
			    	}
			    }); //end of ajax			
	}
});


/*********************************************************************
	[ 로그인 페이지 ]
	로그인 버튼 클릭
*/

$('#btnLogin').click(function(){

	var userEmail = $.trim($("#userEmail").val());
	var userPass = $.trim($("#userPass").val());
	var rememberEmail = false;

	/* 이메일 */
	if(userEmail == ''){
		$('label[for="userEmail"] .error_box').html(blank);
		$('#userEmail').focus();
    		return;
		}else{
		$('label[for="userEmail"] .error_box').html("");
		}	
	
	/* 비밀번호 */
	if(userPass == ''){
		$('label[for="userPass"] .error_box').html(blank);
		$('#userPass').focus();
    		return;
		}else{
		$('label[for="userPass"] .error_box').html("");
		}
	
	/* 이메일 기억하기 체크 박스*/
	if( $("#userEmail").is(':checked') ){
		rememberEmail = true;
		}//end of if
	
  $.ajax({
	type : 'post',
	url : '/include/loginCheck',
	data : { userEmail : $("#userEmail").val(),
			userPass : $("#userPass").val(),
			rememberEmail : rememberEmail
	 		},
	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
	success : function(result){
		// 중복 검사 후 나오는 결과 에러박스에 출력
		if(result == "N"){
        		$('.error_box.login').html("존재하는 회원이 아니거나 비밀번호가 일치하지 않습니다.");
			
			}else{
			// 결과가 result = "Y"이면 로그인 성공 -> loginMove로 이동
        		document.loginForm.submit();
			}
	},
	error : function(err){
		alert(err);
		console.log(err);
	}
	});//end of ajax
	
}); //end of #btnLogin 


/*********************************************************************
	[ 비밀번호 재설정 페이지(1) ]
	비밀번호 찾기 버튼 클릭
*/
/* 비밀번호 찾기*/
$('#btnPwSearch').click(function(){
	
	// input에 입력된 값을 공백제거하고 변수에 담기
	var userEmail = $.trim($("#userEmail").val());
	var userPhone = $.trim($("#userPhone").val());	
	var userName = $.trim($("#userName").val());
	
	// 회원 정보가 있는지 확인
 	  $.ajax({
    	type : 'post',
    	url : 'pwSearch',
    	data : { userEmail : $('#userEmail').val(),
    			userPhone : $('#userPhone').val(),
    			userName : $('#userName').val(),
    	 		},
    	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
    	success : function(result){
    		// 중복 검사 후 나오는 결과 에러박스에 출력
    		if(result == 'N'){
	        		$('.error_box.pwSearch').html("존재하는 회원이 아닙니다.");
				}else{
	        		document.pwSearchForm.submit();
				}
    	},
    	error : function(err){
	        
			alert('실패');
    		console.log(err);
    	}
    }); //end of ajax
}) // end of #btnPwSearch



// [ 비밀번호 재설정 페이지(2) ]
$('#btnPwChange').click(function(){
	var userPass = $.trim($("#userPass").val());
	var userPassCheck = $.trim($("#userPassCheck").val());
	
	/* 비밀번호 */
	if(userPass == ''){
		$('label[for="userPass"] .error_box').html(blank);
		$('#userPass').focus();
    		return;
		}else{
		$('label[for="userPass"] .error_box').html("");
		}
	
	if( !RegexPW.test(userPass) ){

		$('label[for="userPass"] .error_box').html("비밀번호는 영문자와 숫자를 사용하여 6~15자로 작성해 주십시오.");
		return;
	}else{
		$('label[for="userPass"] .error_box').html("");
		}
	
	/* 비밀번호 재확인 */
	if(userPassCheck == ''){
		$('label[for="userPassCheck"] .error_box').html("필수 입력 사항입니다.");
		$('#userPassCheck').focus();
    		return;
		}else{
		$('label[for="userPassCheck"] .error_box').html("");
		}
	
	/* 비밀번호 일치 여부 확인 */
	if(userPass != userPassCheck){
		$('label[for="userPassCheck"] .error_box').html("비밀번호가 일치하지 않습니다.");
		$('#userPassCheck').focus();
		return;
	}
	document.pwChangeForm.submit();
	alert("비밀번호가 변경되었습니다.");
	
}); // end of #btnPwChange

/* 회원 정보 수정*/
$('#btnMemberUpdate').click(function(){
	
	// input에 입력된 값을 공백제거하고 변수에 담기
	var userNickname = $.trim($("#userNickname").val());
	var userPass = $.trim($("#userPass").val());
	var userPassCheck = $.trim($("#userPassCheck").val());
	var userName = $.trim($("#userName").val());
	var userGender = $.trim($("#userGender").val());
	var userPhone = $.trim($("#userPhone").val());
	
	
	/* 닉네임 */
	if(userNickname == ''){
		$('label[for="userNickname"] .error_box').html(blank);
		$('#userNickname').focus();
    		return;
		}else{
		$('label[for="userNickname"] .error_box').html("");
		}		
	
	if( !RegexNick.test(userNickname) ){

		$('label[for="userNickname"] .error_box').html("닉네임 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="userNickname"] .error_box').html("");
		}
	
	if(userPass != ""){
	
	/* 비밀번호 */

	if( !RegexPW.test(userPass) ){

		$('label[for="userPass"] .error_box').html("비밀번호는 영문자와 숫자를 사용하여 6~15자로 작성해 주십시오.");
		return;
	}else{
		$('label[for="userPass"] .error_box').html("");
		}
	
	/* 비밀번호 재확인 */
	/* 비밀번호 일치 여부 확인 */
	if(userPass != userPassCheck){
		$('label[for="userPassCheck"] .error_box').html("비밀번호가 일치하지 않습니다.");
		$('#userPassCheck').focus();
		return;
	}
	}// end of if(비밀번호 입력 여부)
	
	/* 이름 */
	if(userName == ''){
		$('label[for="userName"] .error_box').html(blank);
		$('#userName').focus();
    		return;
		}else{
		$('label[for="userName"] .error_box').html("");
		}
	if( !RegexName.test(userName) ){

		$('label[for="userName"] .error_box').html("이름 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="userName"] .error_box').html("");
		}
		
	/* 휴대전화 */
	if(userPhone == ''){
		$('label[for="userPhone"] .error_box').html(blank);
		$('#userPhone').focus();
    		return false;
		}else{
		$('label[for="userPhone"] .error_box').html("");
		}
		
	if( !RegexTel.test(userPhone) ){

		$('label[for="userPhone"] .error_box').html("전화번호 형식이 올바르지 않습니다. ex)010-000~0-000~0");
		return;
	}else{
		$('label[for="userPhone"] .error_box').html("");
		}
	
	
	 document.memberUpdateForm.submit();
	 alert("회원 정보 수정이 완료되었습니다.");
}) //end of #btnMemberUpdate
$('#btnAgree').click(function(){
	$('#agreeForm').toggle();
});
$('#userDelete').click(function(){
	var result = confirm("정말 탈퇴하시겠습니까?");
	if(result){
		document.userDelete.submit();
	}

})

