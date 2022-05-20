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
										<h3 id="titleCenter"><strong>SIGN UP</strong></h3>
									</div>

									<!-- FORM -->
									<form id="member_frm" action="Main" method="post" name="member_frm">
										
										<!-- NICKNAME -->
										<div class="form-group first field--not-empty">
											<label for="user_nickname">닉네임&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control form_nick" id="user_nickname"
												name="user_nickname" autofocus>
										</div>

										<!-- EMAIL -->
										<div class="form-group first field--not-empty">
											<div class="email_check col-md-9">
												<label for="user_email">이메일&nbsp; &nbsp; &nbsp; &nbsp;<span
														class="error_box"></span></label>
												<input type="email" class="form-control" id="user_email"
													name="user_email">
											</div>

											<div class='email_check col-md-3'>
												<button type="button" id="btn_emailCheak" class="btn_check btn-pill btn-orange">
													<span class="text-white btn_text">중복확인</span></button>
											</div>
										</div>

										<!-- PW -->
										<div class="form-group first field--not-empty">
											<label for="user_pass">비밀번호&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="password" class="form-control" id="user_pass"
												name="user_pass">
										</div>

										<!-- PW CHECK -->
										<div class="form-group first field--not-empty">
											<label for="user_passCheck">비밀번호 재확인 &nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="password" class="form-control" id="user_passCheck">
										</div>

										<!-- NAME -->
										<div class="form-group first field--not-empty">
											<label for="user_name">이름&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="text" class="form-control" id="user_name" name="user_name">
										</div>

										<!-- TEL -->
										<div class="form-group first field--not-empty">
											<label for="user_phone">휴대전화&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
											<input type="tel" class="form-control" id="user_phone" name="user_phone">
										</div>
										<br/>
										<!-- 성별 -->
										<div class="form-group">
											<label for="user_gender">성별&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span>													
													</label>
										</div>
										<div class="form_toggle row-vh d-flex flex-row justify-content-between" >
											<div class="form_radio_btn radio_male">
												<input id="radio-1" type="radio" name="user_gender" value="남" checked>
												<label for="radio-1">남자</label>
											</div>							 
											<div class="form_radio_btn">
												<input id="radio-2" type="radio" name="user_gender" value="여">
												<label for="radio-2">여자</label>
											</div>
										</div>
										
										<!-- Address -->
										<div class="form-group first field--not-empty" style="margin-top:10%">
											<label for="memberAddr">주소&nbsp; &nbsp; &nbsp; &nbsp;<span
													class="error_box"></span></label>
										</div>
										
										<div class="AddrAdd" >
											<div class="form-group">
												<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="addr1" id="addr1" type="text" readonly="readonly" >
													<button type="button" class="btn btn-orange Addr" onclick="execPostCode();" style="background-color:#F8b03a; color:white;"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
												</div>
												<div class="form-group">
													<input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="addr2" id="addr2" type="text" readonly="readonly" />
												</div>
												<div class="form-group">
													<input class="form-control" placeholder="상세주소" name="addr3" id="addr3" type="text"  />
												</div>
										</div>

										<div class="d-flex mb-5 align-items-center" id="agree">
											<label class="control control--checkbox mb-3 mb-sm-0"><span
													class="caption"><span id="btnAgree">이용약관</span>에 동의합니다.</span>
												<input type="checkbox" id="termsService" />
												<span class="error_box"></span>
												<div class="control__indicator"></div>
											</label>
										</div>
										<div id="agreeForm" tabindex="0">
											<span class="jo">제 1조 (목적)</span>
											<br>
											나와함개 서비스 이용약관(이하 “약관”이라 합니다)은 나와함개 커뮤니티 사이트가 제공하는 인터넷 관련 서비스와 관련하여
											회사와 이용 고객(또는 회원) 간에 서비스의 이용 조건 및 절차, 회사와 회원 간의 권리, 의무 및 책임 사항 기타 필요한 사항을
											규정함을 목적으로 합니다.
											<br><br>
											<span class="jo">제 2조 (용어)</span>
											<br>
											본 약관에서 사용하는 용어의 정의는 다음 각 호와 같으며, 정의되지 않은 용어에 대한 해석은 관계법령 및 서비스별 안내에서 정하는 바에
											따릅니다.
											<br>
											① 서비스: 이용 고객 또는 회원이 PC, 휴대형 단말기, 태블릿PC 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록
											회사가 제공하는 컨텐츠, 커뮤니티, SNS 및 그 외 관련된 서비스를 말합니다.
											<br>
											② 회원: 회사의 서비스에 접속하여 본 약관에 동의하고 ID와 PASSWORD를 발급 받았으며 회사가 제공하는 서비스를 이용하는 고객을
											포괄적으로 의미합니다.
											<br>
											③ 회원정보: 회사가 가입신청자에게 회원가입 신청양식(이하 “신청양식"이라 합니다)에 기재를 요청하는 가입신청자의 개인정보와 회원의
											식별과 서비스 이용을 위하여 회원이 입력하고 서비스 내 공개된 개인정보를 의미합니다.
											<br>
											④ ID(고유번호): 회원 식별과 회원의 본 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합을 말합니다. 본
											서비스에서는 E-mail 주소를 ID로 사용합니다.
											<br>
											⑤ PASSWORD(비밀번호): 회원의 정보 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합을 말합니다.
											<br>
											⑥ 게시물: 회원이 회사가 제공하는 서비스에 게시 또는 등록하는 부호(URL 포함), 문자, 음성, 음향, 영상(동영상 포함),
											이미지(사진 포함), 파일 등 일체의 정보를 말합니다.
											<br><br>
											<span class="jo">제3조 (약관의 효력 및 변경)</span>
											<br>
											① 본 약관은 회원이 쉽게 알 수 있도록 서비스 내 또는 연결화면을 통하여 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력이
											발생합니다.
											<br>
											② 회사는 약관의 규제에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계법령에 위배되지 않는 범위 내에서 본 약관을
											개정할 수 있습니다.
											<br>
											③ 회사는 약관을 개정할 경우 그 개정이유 및 적용일자를 명시하여 현행 약관과 함께 적용일자 7일전부터 적용일 전일까지 제1항의 방법으로
											공지합니다.
											<br>
											④ 회사가 제3항에 따라 개정약관을 공지 또는 통지하였음에도 불구하고 회원이 명시적으로 거부의사를 표시하지 아니하는 경우 회원이
											개정약관에 동의한 것으로 봅니다.
											<br>
											⑤ 회원은 변경된 약관에 동의하지 아니하는 경우 서비스의 이용을 중단하고 이용계약을 해지할 수 있습니다.
											<br>
											⑥ 본 약관에 동의하는 것은 서비스를 정기적으로 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를
											알지 못하여 발생하는 회원의 피해에 대하여 회사는 책임을 지지 않습니다.
											<br><br>
											<span class="jo">제4조 (약관 외 준칙)</span>
											<br>
											본 약관에 명시되지 않은 사항에 대해서는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 약관의 규제에 관한 법률, 전기통신사업법 등
											관계법령 및 회사가 정한 서비스의 세부이용지침 등의 규정에 따릅니다.
											<br><br>
											<span class="jo">제5조 (이용계약의 성립)</span>
											<br>
											① 서비스 이용계약은 회사가 정한 가입 양식에 따라 회원정보(전자우편주소, 비밀번호, 별명 등)를 기입하여 회원가입신청을 하고 회사가
											이러한 신청에 대하여 승인함으로써 체결됩니다.
											<br>
											② 가입신청자가 회원정보를 제출하는 것은 회원가입 화면에 노출되어 있는 본 약관 및 개인정보취급방침의 내용을 숙지하고, 회사가 서비스
											이용을 위해 운영하는 각종 정책(저작권 정책, 운영 방침 등)과 수시로 공지하는 사항을 준수하는 것에 대해 동의하는 것으로 봅니다.
											<br><br>
											<span class="jo">제6조 (이용신청에 대한 승낙 및 제한)</span>
											<br>
											① 회사는 서비스의 이용을 신청한 가입신청자에 대하여 업무상ㆍ기술상 지장이 없는 한 접수순서에 따라 서비스의 이용을 승낙합니다.
											<br>
											② 타인의 개인정보를 도용하는 등 부정한 목적 또는 방법으로 이용신청을 한 회원의 ID는 사전 통지 없이 이용 계약이 해지될 수 있으며,
											당해 회원은 관계법령에 따라 처벌을 받을 수 있습니다.
											<br>
											③ 회사는 다음 각 호에 해당하는 이용신청에 대하여는 승낙을 하지 않을 수 있습니다.
											<br>
											1) 기술상 서비스 제공이 불가능한 경우
											<br>
											2) 신청양식의 기재사항을 누락하거나 오기하여 신청하는 경우
											<br>
											3) 사회의 안녕질서 또는 미풍양속을 저해하거나 저해할 목적으로 신청한 경우
											<br>
											4) 회원의 귀책사유에 의하여 회원자격을 상실한 적이 있는 경우. 다만, 자격상실 이후 6개월 이상 경과한 자로 회사의 회원 재가입
											승낙을 받은 경우는 예외로 합니다.
											<br>
											5) 기타 회사가 정한 이용요건에 충족되지 않았을 경우
											<br>
											④ 회사는 서비스를 이용하는 회원에 대하여 회원의 종류 및 등급별로 구분하여 이용시간, 이용회수, 서비스 메뉴 등을 세분하여 이용에
											차등을 둘 수 있습니다.
											<br><br>
											<span class="jo">제7조 (회원정보의 변경)</span>
											<br>
											① 회원은 서비스를 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다.
											<br>
											② 회원은 서비스를 이용하면서 회사에 제출한 회원정보가 변경되었을 경우 개인정보 설정 화면에서 회원정보를 수정하거나 고객센터를 통하여
											회사에 변경 사항을 통지하여야 합니다.
											<br>
											③ 회원정보를 수정하지 않음으로 인하여 발생하는 모든 책임은 회원에게 있습니다.
											<br><br>
											<span class="jo">제8조 (서비스의 이용)</span>
											<br>
											① 회사는 회원의 이용신청을 승낙한 때부터 서비스를 개시합니다.
											<br>
											② 회사의 업무상ㆍ기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 서비스에 공지하거나 회원에게 이를 통지합니다.
											<br>
											③ 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 회사의 업무상ㆍ기술상 또는 서비스 운영정책상 서비스가 일시 중지될
											수 있습니다. 이러한 경우 회사는 사전 또는 사후에 이를 공지합니다.
											<br>
											④ 회사는 서비스 내의 개별서비스에 대한 별도의 약관을 둘 수 있으며, 개별서비스에서 별도로 적용되는 약관에 대한 동의는 회원이
											개별서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다.
											<br><br>
											<span class="jo">제9조 (서비스의 변경 및 중지)</span>
											<br>
											① 회사는 서비스(개별서비스 포함)를 변경하여야 하는 상당한 이유가 있는 경우 변경될 서비스의 내용 및 제공일자를 제15조에서 정한
											방법으로 회원에게 통지하고 서비스를 변경하여 제공할 수 있습니다.
											<br>
											② 회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
											<br>
											1) 서비스용 설비의 보수 등 공사로 인한 부득이한 경우
											<br>
											2) 회원이 회사의 영업활동을 방해하는 경우
											<br>
											3) 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우
											<br>
											4) 제휴업체(BP)와의 계약종료 등과 같은 회사의 제반 사정으로 서비스를 유지할 수 없는 경우
											<br>
											5) 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우
											<br><br>
											<span class="jo">제10조 (정보의 제공 및 광고의 게재)</span>
											<br>
											① 회사는 서비스를 운영함에 있어 각종 정보를 서비스 화면에 게재하거나 E-mail, 서신우편, SMS(MMS)등으로 회원에게 제공할 수
											있습니다.
											<br>
											② 회사는 서비스를 운영함에 있어 회사 또는 제휴사의 서비스 관련 각종 광고를 서비스 화면 또는 게시물과 결합하여 게재하거나 회원의
											동의를 얻어 E-mail 및 서신 우편, SMS(MMS) 등의 방법으로 회원에게 제공할 수 있습니다.
											<br>
											③ 회사는 다음 각호에 해당하는 경우 회원의 동의여부와 상관없이 전자우편으로 발송할 수 있습니다.
											<br>
											1) 이용 신청에서 입력한 전자우편 주소의 소유를 확인하기 위해서 인증메일을 발송하는 경우
											<br>
											2) 회원의 정보가 변경되어 확인하기 위해서 인증메일을 발송하는 경우
											<br>
											3) 기타 서비스를 제공함에 있어 회원이 반드시 알아야 하는 중대한 정보라고 회사가 판단하는 경우
											<br><br>
											<span class="jo">제11조 (게시물에 대한 책임)</span>
											<br>
											① 회사는 회원이 게시하거나 전달하는 서비스 내의 게시물이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전 통지 없이 삭제할 수
											있으며, 이에 대해 회사는 어떠한 책임도 지지 않습니다.
											<br>
											1) 회사, 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
											<br>
											2) 공공질서 및 미풍양속에 위반되는 내용의 게시물에 해당하는 경우
											<br>
											3) 범죄 행위에 결부된다고 인정되는 내용인 경우
											<br>
											4) 회사 또는 제3자의 저작권, 기타 타인의 권리를 침해하는 내용인 경우
											<br>
											5) 회사가 정한 개별 서비스 별 세부이용지침에 반하는 내용인 경우
											<br>
											6) 회사에서 제공하는 서비스와 관련 없는 내용인 경우
											<br>
											7) 불필요하거나 승인되지 않은 광고, 판촉물을 게재하는 경우
											<br>
											8) 타인의 명의 등을 무단으로 도용하여 작성한 내용이거나, 타인이 입력한 정보를 무단으로 위ㆍ변조한 내용인 경우
											<br>
											9) 동일한 내용을 중복하여 다수 게시하는 등 게시의 목적에 어긋나는 경우
											<br>
											10) 게시물의 정보를 외부 서비스에서 사용하는 행위를 금지하는 사이트에서 URL 정보를 수집하여 게재하는 경우
											<br>
											11) 기타 관계 법령 및 회사의 개별 서비스 별 세부이용지침 등에 위반된다고 판단되는 경우
											<br>
											② 회사는 개별 서비스 별로 게시물과 관련된 세부이용지침을 별도로 정하여 시행할 수 있으며, 회원은 그 지침에 따라 게시물(회원간 전달
											포함)을 게재하여야 합니다.
											<br><br>
											<span class="jo">제12조 (게시물의 저작권 등)</span>
											<br>
											① 회원이 서비스 내에 게시한 게시물의 저작권은 저작권법에 의해 보호를 받으며, 회사가 작성한 저작물에 대한 저작권 및 기타 지적재산권은
											회사에 귀속합니다.
											<br>
											② 회원은 자신이 서비스 내에 게시한 게시물을 회사가 국내ㆍ외에서 다음 각 호의 목적으로 사용하는 것을 허락합니다.
											<br>
											1) 서비스(제3자가 운영하는 사이트 또는 미디어의 일정 영역 내에 입점하여 서비스가 제공되는 경우 포함) 내에서 게시물을 사용하기
											위하여 게시물의 크기를 변환하거나 단순화하는 등의 방식으로 수정하는 것
											<br>
											2) 회사 또는 관계사가 운영하는 본 서비스 및 연동 서비스 에 게시물을 복제ㆍ전송ㆍ전시하는 것. 다만, 회원이 게시물의
											복제ㆍ전송ㆍ전시에 반대 의견을 E-mail을 통해 관리자에게 통지할 경우에는 그러하지 않습니다.
											<br>
											3) 회사의 서비스를 홍보하기 위한 목적으로 미디어, 소셜미디어를 포함한 디지털 마케팅 채널, 통신사 등에게 게시물의 내용을 보도,
											방영하게 하는 것.
											<br>
											③ 전 항의 규정에도 불구하고, 회사가 게시물을 전 항 각 호에 기재된 목적 이외에 제3자에게 게시물을 제공하고 금전적 대가를 지급받는
											경우에는 사전에 전화, E-mail 등의 방법으로 회원의 동의를 얻습니다. 이 경우 회사는 회원에게 별도의 보상을 제공합니다.
											<br>
											④ 회원이 서비스에 게시물을 게재하는 것은 다른 회원이 게시물을 서비스 내에서 사용하거나, 회사가 검색결과로 사용하는 것을 허락한 것으로
											봅니다. 그리고 스마트폰, 태블릿 PC의 서비스 이용자(앱 또는 브라우저로 서비스를 비가입 방문한 경우도 포함)가 소프트웨어(예:앱,
											브라우저) 또는 하드웨어(예: 스마트폰, 태블릿PC)에서 제공하는 기능을 이용하여 게시물을 저장한 후 활용하는 것을 허락한 것으로
											봅니다.
											<br>
											⑤ 제18조에 의해 이용계약이 해지되는 경우 작성했던 게시물 및 댓글은 자동으로 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을
											확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신
											후, 이용계약 해지 신청(탈퇴 신청)하시기 하여야 합니다. 다만, 다른 회원 또는 제3자에게 의하여 스크랩, 공유 등의 기능을 통해 다시
											게시된 게시물 및 댓글 등 다른 회원의 정상적인 서비스 이용에 필요한 게시물은 삭제되지 않습니다.
											<br>
											⑥ 회사는 서비스 운영정책상 또는 회사가 운영하는 사이트간의 통합 등을 하는 경우 게시물의 내용을 변경하지 아니하고 게시물의 게재 위치를
											변경ㆍ이전하거나 사이트간 공유로 하여 서비스할 수 있습니다. 다만, 게시물의 이전ㆍ변경 또는 공유를 하는 경우에는 사전에 공지합니다.
											<br><br>
											<span class="jo">제13조 (회사의 의무)</span>
											<br>
											① 회사는 서비스 제공과 관련하여 알고 있는 회원의 회원정보를 본인의 동의 없이 제3자에게 제공하지 않습니다.
											<br>
											② 회사는 회원의 회원정보를 보호하기 위해 보안시스템을 구축 운영하며, "개인정보취급방침"을 공지하고 준수합니다. 또한, 회사는
											"개인정보취급방침"에 따라 회원정보를 취급함에 있어 안정성 확보에 필요한 기술적 및 관리적 대책을 수립ㆍ운영합니다.
											<br>
											③ 회사는 서비스와 관련한 회원의 불만사항이 접수되는 경우 이를 신속하게 처리하여야 하며, 신속한 처리가 곤란한 경우 그 사유와 처리
											일정을 서비스 화면에 게재하거나 E-mail 등을 통하여 회원에게 통지합니다.
											<br>
											④ 회사가 제공하는 서비스로 인하여 회원에게 손해가 발생한 경우 그러한 손해가 회사의 고의나 중과실에 의해 발생한 경우에 한하여 회사에서
											책임을 부담하며, 그 책임의 범위는 통상손해에 한합니다.
											<br><br>
											제14조 (회원의 의무)
											<br>
											① 회원은 관계법령, 약관, 서비스 이용안내 및 서비스상에 공지한 주의사항, 회사가 서비스 이용과 관련하여 회원에게 통지하는 사항 등을
											준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다.
											<br>
											② 회원은 회사에서 공식적으로 인정한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업 활동을 할 수 없으며, 특히 해킹, 광고를
											통한 수익, 음란사이트를 통한 상업행위, 상용소프트웨어 불법배포 등을 할 수 없습니다. 이를 위반하여 발생한 영업 활동의 결과 및 손실,
											관계기관에 의한 구속 등 법적 조치 등에 관해서는 회사가 책임을 지지 않으며, 회원은 이와 같은 행위와 관련하여 회사에 대하여 손해배상
											의무를 집니다.
											<br>
											③ 회원은 서비스의 이용권한, 기타 서비스 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며 이를 담보로 제공할 수 없습니다.
											<br><br>
											<span class="jo">제15조 (회원에 대한 통지)</span>
											<br>
											① 회사는 회원의 서비스 이용에 필요한 권리 및 의무 등에 관한 사항을 회원이 지정한 E-mail, SMS 등으로 통지할 수 있습니다.
											<br>
											② 회사는 불특정 다수 회원에 대한 통지의 경우 서비스에 게시함으로써 개별 통지에 갈음할 수 있습니다.
											<br><br>
											<span class="jo">제16조 (ID와 PASSWORD 관리에 대한 의무와 책임)</span>
											<br>
											① 회원은 자신의 ID와 PASSWORD 관리를 철저히 하여야 합니다. ID와 PASSWORD의 관리 소홀, 부정 사용에 의하여 발생하는
											모든 결과에 대한 책임은 회원 본인에게 있습니다.
											<br>
											② 회사"는 회원 ID의 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인할 우려가 있는 경우,
											해당 ID의 이용을 제한할 수 있습니다.
											<br>
											③ 회원은 본인의 ID 및 PASSWORD를 타인에게 이용하게 해서는 안되며, 회원 본인의 ID 및 PASSWORD를 도난 당하거나
											타인이 사용하고 있음을 인지하는 경우에는 바로 회사에 통보하고 회사의 안내가 있는 경우 그에 따라야 합니다.
											<br><br>
											<span class="jo">제17조 (회원정보의 보호 및 이용)</span>
											<br>
											① 회사는 적법하고 공정한 수단에 의하여 이용계약의 성립 및 이행에 필요한 최소한의 범위 내에서 개인정보취급방침에 따라 회원의 회원정보를
											수집합니다.
											<br>
											② 회사의 개인정보취급방침은 회사에 연동된 다른 서비스(회사가 운영하지 않는 서비스를 말합니다. 이하 같습니다)에는 적용되지 않습니다.
											<br>
											③ 회사는 통신비밀보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계법령에 따라 행정기관이나 수사기관 등에서 회원의
											회원정보의 열람이나 제출을 요청하는 경우에는 이를 제공할 수 있습니다.
											<br>
											④ 회사는 회원의 귀책사유로 인해 노출된 회원정보에 대해서 일체의 책임을 부담하지 않습니다.
											<br>
											⑤ 회사는 회원정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 이러한 업무의 일부 또는 전부를 회사가
											선정한 회사에 위탁할 수 있으며, 회원정보의 취급 및 관리 등에 관한 업무를 위탁하는 경우에는 개인정보취급방침을 통하여 공지합니다.
											<br>
											⑥ 회원이 이용계약 체결과정에서 회사에 제공한 회원정보에 대한 이용 또는 제공에 대한 동의를 철회하고자 하는 경우에는 개인정보취급방침에서
											정한 바에 따르며, 회원이 이러한 동의를 철회하는 경우 서비스 이용계약은 자동으로 해지됩니다.
											<br><br>
											<span class="jo">제18조 (계약해지 및 이용제한)</span>
											<br>
											① 회원이 서비스 이용계약을 해지하고자 할 경우에는 서비스를 제공하는 홈페이지 해지 신청을 하여야 합니다.
											홈페이지나를 통해 계약 해지가 불가능한 경우에는 회원이 회사가 제공하는 서비스 페이지 또는 전자우편 등의 방법으로 회사에
											중지신청을 할 수 있습니다. 회사는 이와 같은 요청을 받았을 경우, 회사가 별도로 고지한 방법에 따라 신속하게 처리합니다.
											<br>
											② 회원이 이용계약을 해지하는 경우 회원의 게시물의 삭제여부는 제 12조 제5항에 따릅니다.
											<br>
											③ 회사는 회원이 본 약관 및 개별서비스 이용약관을 위반한 경우 및 서비스의 정상적인 운영을 방해한 경우에는 경고, 일시적 이용정지,
											영구적 이용정지 등의 단계로 서비스 이용을 제한하거나 이용계약을 해지할 수 있습니다.
											<br>
											④ 회원은 본 조 제 3항에 따른 서비스 이용정지 기타 서비스 이용과 관련된 이용제한에 대해 관리자에게 E-mail을 통해 이의신청을 할
											수 있으며, 회사는 회원의 이의신청이 정당하다고 판단되는 경우 즉시 서비스 이용을 재개합니다.
											<br>
											⑤ 회사는 회원이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.
											<br><br>
											<span class="jo">제 29조 (손해배상)</span>
											<br>
											① 회원이 본 약관의 규정을 위반함으로 인하여 회사에 손해가 발생하게 되는 경우, 본 약관을 위반한 회원은 회사에 발생하는 모든 손해를
											배상하여야 합니다.
											<br>
											② 회원이 서비스를 이용하는 과정에서 행한 불법행위나 본 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는
											소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책 시켜야 하며, 회사가 면책되지 못한 경우 당해
											회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.
											<br>
											<span class="jo">제 30조 (면책사항)</span>
											<br>
											① 회사는 천재지변, 디도스(DDOS)공격, IDC장애, 기간통신사업자의 회선 장애 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할
											수 없는 경우에는 서비스 제공에 관한 책임이 면책됩니다.
											<br>
											② 회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.
											<br>
											③ 회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그 밖에 서비스를 통하여 얻은 자료로 인한
											손해 등에 대하여도 책임을 지지 않습니다. 회사는 회원이 사이트에 게재한 게시물의 정확성 등 내용에 대하여는 책임을 지지 않습니다.
											<br>
											④ 회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할
											책임도 없습니다.
											<br>
											⑤ 회원이 자신의 개인정보를 타인에게 유출 또는 제공함으로써, 발생하는 피해에 대해서 회사는 일절 책임을 지지 않습니다.
											<br>
											⑥ 게시물 또는 댓글 등을 통해 표현하거나 드러나는 회원의 견해와 회사의 견해는 무관하며, 회사는 회원이 제공하는 게시물 또는 댓글 등에
											대하여 어떠한 책임도 부담하지 아니합니다.
											<br>
											⑦ 본 서비스 화면에서 링크, 배너 등을 통하여 연결된 회사(이하 피연결회사)와 회원간에 이루어진 거래에 회사는 개입하지 않으며, 해당
											거래에 대하여 책임을 지지 않습니다.
											<br>
											⑧ 회사는 회원의 게시물을 등록 전에 사전심사 하거나 상시적으로 게시물의 내용을 확인 또는 검토하여야 할 의무가 없으며, 그 결과에 대한
											책임을 지지 않습니다.
											<br>
											⑨ 회사는 회원의 컴퓨터 환경이나 회사의 관리 범위에 있지 아니한 보안 문제로 인하여 발생하는 제반 문제 또는 현재의 보안기술 수준으로
											방어가 곤란한 네트워크 해킹 등 회사의 귀책사유 없이 발생하는 문제에 대해서 책임을 지지 않습니다.
											<br><br>
											<span class="jo">제 31조 (분쟁 조정 및 관할법원)</span>
											<br>
											① 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생한 경우, 회사와 회원은 분쟁의 해결을 위해 성실히 협의합니다.
											<br>
											② 본 조 제1항의 협의에서도 분쟁이 해결되지 않을 경우 양 당사자는 민사소송법상의 관할법원에 소를 제기할 수 있습니다.
											<br>
											③ 회사와 이용자간에 제기된 소송에는 대한민국 법을 적용합니다.
											<br>
											④ 본 약관은 한글로 작성되었습니다. 본 약관의 번역본이 한글 원문과 차이가 있을 경우 한글 원문이 우선합니다.
											<br>
											⑤ 본 조 제1항의 협의에서도 분쟁이 해결되지 않아 소송이 제기되는 경우에는 “회사”의 본사 소재지를 관할하는 법원을 전속 관할법원으로
											합니다.
											<br><br>
											<span class="jo">부칙 (시행일)</span>
											<br>
											본 약관은 2020년 4월 1일부터 시행합니다.
											<br><br>
											*이전 약관이 있는 경우는 아래 항목 추가
											<br>
											종전 약관은 본 약관으로 대체됩니다. 개정된 이용약관의 적용일자 이전 가입자 또한 개정된 이용약관의 적용을 받습니다.
											<br>
											▶ 이전 이용 약관 보기 (0000년 00월 00일 ~ 0000년 00월 00일)
										</div>
										
										<input type="submit" value="가입하기" id="btn_signUp" class="btn btn-pill btn-block text-white btn-orange" style="background-color:#F8b03a; color:white;">
										<div class="d-flex mb-5 align-items-center" id="homeGO">
											<label class="control control--checkbox mb-0"><span class="caption"></span>
											</label>
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
				$("#btn_signUp").mouseover(function(){
					$("#btn_signUp").css("background-color","#dc6721");
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
				
				$("#btn_emailCheak").mouseover(function(){
					$("#btn_emailCheak").css("background-color","#dc6721");
				});
				$("#btn_emailCheak").mouseout(function(){
					$("#btn_emailCheak").css("background-color","#F8b03a");
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
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
                
            }
        }).open();
    }

		</script>
	</body>

	</html>