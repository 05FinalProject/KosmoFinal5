<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
   <!-- <meta name="description" content="Directing Template" />-->
    <meta name="keywords" content="Directing, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>너와 함개</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
      rel="stylesheet"
    />

    <!-- Css Styles -->
    <link
      rel="stylesheet"
      href="/agency/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/font-awesome.min.css"
      type="text/css"
    />
      <link
      rel="stylesheet"
      href="/agency/css/elegant-icons.css"
      type="text/css"
    />
    
    <link
      rel="stylesheet"
      href="/agency/css/nice-select.css"
      type="text/css"
    />
  
    <link
      rel="stylesheet"
      href="/agency/css/magnific-popup.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/jquery-ui.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/owl.carousel.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/agency/css/slicknav.min.css"
      type="text/css"
    />
    <link rel="stylesheet" href="/agency/css/style.css" type="text/css" />
    
    
    <link rel="stylesheet" id="montserrat-css"
          href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link rel="stylesheet" id="open-sans-css"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i">

    <link rel="stylesheet" id="animate-css" href="/css/animate.min.css?ver=3.7.2" type="text/css" media="all">
    <link rel="stylesheet" id="font-awesome-css" href="/css/font-awesome.min.css?ver=5.15.4" type="text/css"
          media="all">
    <link rel="stylesheet" id="bootstrap-css" href="/css/bootstrap.min.css?ver=4.6.0" type="text/css" media="all">
    <link rel="stylesheet" id="smartmenus-bootstrap-css" href="/css/smartmenus-bootstrap.min.css?ver=1.1.1"
          type="text/css" media="all">
    <link rel="stylesheet" id="swiper-css" href="/css/swiper.min.css?ver=4.5.3" type="text/css" media="all">
    <link rel="stylesheet" id="magnific-popup-css" href="/css/magnific-popup.min.css?ver=1.1.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-icon-css" href="/css/lana-pet-icon.min.css?ver=1.0.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-theme-css" href="/css/lana-pet-theme.min.css?ver=1.0.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-print-css" href="/css/lana-pet-print.min.css?ver=1.0.0" type="text/css"
          media="print">

    <style>
      ul {
        list-style: none;
        padding-left: 0px;
      }
      
     
     .search1 {
  position: relative;
  width: 300px;
}

.search2 {
  width: 100%;
  border: 2px solid  #F3E2A9;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
}

.search3 {
  position : absolute;
  width: 17px;
  top: 10px;
  right: 12px;
  margin: 0;
}

/* .listing__item{
border: 1px solid #008000;
} */
     
   </style>
  </head>

<%@include file="./Header.jsp" %>
  
  <body class="home page page-template-template-lana-editor">
   
  <div id="top">
	<div class="search-book bg-dark2">
	<form name="searchform" action="/pokedex" method="get">
		<div class="row">
			<h2 class="col-lg-1 col-12 text-wh"><img src="/img/icon/icon_ball_b.png" alt=""> 포켓몬 도감</h2>
			<div class="nav-search black col-lg-11 col-12">
				<div class="search-wrp">
					<input type="text" id="word" name="word" onkeypress="if(event.keyCode==13) {searchforms(); return false;}" value="" placeholder="포켓몬 이름 또는 설명, 특성 키워드를 입력해주세요.">
					<button type="button" onclick="searchforms()" class="no-style btn-search btn-primary"><p class="sr-only">검색</p></button>
				</div>
			</div>
		</div>
		<div class="collapse" id="detailed">
		<div class="form-wrp row">
				<div class="col-lg-1 col-0"></div>
				<div class="col-lg-3 col-12 pr-lg-0 pl-lg-0">
					<div class="form-group row">
						<label class="col-lg-2 col-12 col-form-label">특성</label>
						<div class="col-lg-10 col-12">
							<select name="characters" id="characters" style="width:360px; " tabindex="-1" class="select2-hidden-accessible" aria-hidden="true">
								<option id="0" value="">전체</option>
 								<option value="AR시스템">AR시스템</option>

								<option value="가뭄">가뭄</option>

								<option value="가속">가속</option>

								<option value="갈지자걸음">갈지자걸음</option>

								<option value="강철술사">강철술사</option>

								<option value="강철정신">강철정신</option>

								<option value="개미지옥">개미지옥</option>

								<option value="건조피부">건조피부</option>

								<option value="게으름">게으름</option>

								<option value="곡예">곡예</option>

								<option value="공생">공생</option>

								<option value="과학의힘">과학의힘</option>

								<option value="괴력집게">괴력집게</option>

								<option value="괴짜">괴짜</option>

								<option value="굳건한신념">굳건한신념</option>

								<option value="그대로꿀꺽미사일">그대로꿀꺽미사일</option>

								<option value="그래스메이커">그래스메이커</option>

								<option value="그림자밟기">그림자밟기</option>

								<option value="근성">근성</option>

								<option value="급류">급류</option>

								<option value="기묘한약">기묘한약</option>

								<option value="기분파">기분파</option>

								<option value="긴장감">긴장감</option>

								<option value="까칠한피부">까칠한피부</option>

								<option value="깨어진갑옷">깨어진갑옷</option>

								<option value="꼬르륵스위치">꼬르륵스위치</option>

								<option value="꾸덕꾸덕굳기">꾸덕꾸덕굳기</option>

								<option value="꿀모으기">꿀모으기</option>

								<option value="끝의대지">끝의대지</option>

								<option value="나쁜손버릇">나쁜손버릇</option>

								<option value="나이트메어">나이트메어</option>

								<option value="날씨부정">날씨부정</option>

								<option value="날카로운눈">날카로운눈</option>

								<option value="내열">내열</option>

								<option value="내용물분출">내용물분출</option>

								<option value="노가드">노가드</option>

								<option value="노말스킨">노말스킨</option>

								<option value="눈숨기">눈숨기</option>

								<option value="눈치우기">눈치우기</option>

								<option value="눈퍼뜨리기">눈퍼뜨리기</option>

								<option value="다운로드">다운로드</option>

								<option value="다크오라">다크오라</option>

								<option value="단단한발톱">단단한발톱</option>

								<option value="단순">단순</option>

								<option value="달마모드">달마모드</option>

								<option value="대운">대운</option>

								<option value="델타스트림">델타스트림</option>

								<option value="도망태세">도망태세</option>

								<option value="도주">도주</option>

								<option value="독가시">독가시</option>

								<option value="독수">독수</option>

								<option value="독폭주">독폭주</option>

								<option value="돌머리">돌머리</option>

								<option value="두꺼운지방">두꺼운지방</option>

								<option value="둔감">둔감</option>

								<option value="떠도는영혼">떠도는영혼</option>

								<option value="라이트메탈">라이트메탈</option>

								<option value="리밋실드">리밋실드</option>

								<option value="리베로">리베로</option>

								<option value="리시버">리시버</option>

								<option value="리프가드">리프가드</option>

								<option value="마그마의무장">마그마의무장</option>

								<option value="마이너스">마이너스</option>

								<option value="마이페이스">마이페이스</option>

								<option value="마중물">마중물</option>

								<option value="매지션">매지션</option>

								<option value="매직가드">매직가드</option>

								<option value="매직미러">매직미러</option>

								<option value="맹화">맹화</option>

								<option value="먹보">먹보</option>

								<option value="멀티스케일">멀티스케일</option>

								<option value="멀티타입">멀티타입</option>

								<option value="메가런처">메가런처</option>

								<option value="메탈프로텍트">메탈프로텍트</option>

								<option value="면역">면역</option>

								<option value="멸망의바디">멸망의바디</option>

								<option value="모래날림">모래날림</option>

								<option value="모래뿜기">모래뿜기</option>

								<option value="모래숨기">모래숨기</option>

								<option value="모래의힘">모래의힘</option>

								<option value="모래헤치기">모래헤치기</option>

								<option value="무기력">무기력</option>

								<option value="무도한행동">무도한행동</option>

								<option value="무아지경">무아지경</option>

								<option value="무희">무희</option>

								<option value="미끈미끈">미끈미끈</option>

								<option value="미라">미라</option>

								<option value="미라클스킨">미라클스킨</option>

								<option value="미러아머">미러아머</option>

								<option value="미스트메이커">미스트메이커</option>

								<option value="발광">발광</option>

								<option value="발끈">발끈</option>

								<option value="방음">방음</option>

								<option value="방진">방진</option>

								<option value="방탄">방탄</option>

								<option value="배리어프리">배리어프리</option>

								<option value="배짱">배짱</option>

								<option value="배터리">배터리</option>

								<option value="배틀스위치">배틀스위치</option>

								<option value="백의울음">백의울음</option>

								<option value="벌레의알림">벌레의알림</option>

								<option value="변덕쟁이">변덕쟁이</option>

								<option value="변색">변색</option>

								<option value="변환자재">변환자재</option>

								<option value="보이지않는주먹">보이지않는주먹</option>

								<option value="복슬복슬">복슬복슬</option>

								<option value="복안">복안</option>

								<option value="볼주머니">볼주머니</option>

								<option value="볼줍기">볼줍기</option>

								<option value="부식">부식</option>

								<option value="부유">부유</option>

								<option value="부자유친">부자유친</option>

								<option value="부풀린가슴">부풀린가슴</option>

								<option value="분노의경혈">분노의경혈</option>

								<option value="불가사의부적">불가사의부적</option>

								<option value="불굴의마음">불굴의마음</option>

								<option value="불굴의방패">불굴의방패</option>

								<option value="불꽃몸">불꽃몸</option>

								<option value="불면">불면</option>

								<option value="불요의검">불요의검</option>

								<option value="브레인포스">브레인포스</option>

								<option value="비비드바디">비비드바디</option>

								<option value="비스트부스트">비스트부스트</option>

								<option value="사이코메이커">사이코메이커</option>

								<option value="색안경">색안경</option>

								<option value="서투름">서투름</option>

								<option value="서핑테일">서핑테일</option>

								<option value="선파워">선파워</option>

								<option value="소울하트">소울하트</option>

								<option value="속보">속보</option>

								<option value="솜털">솜털</option>

								<option value="수의베일">수의베일</option>

								<option value="수포">수포</option>

								<option value="수확">수확</option>

								<option value="숙성">숙성</option>

								<option value="순수한힘">순수한힘</option>

								<option value="스나이퍼">스나이퍼</option>

								<option value="스웜체인지">스웜체인지</option>

								<option value="스위트베일">스위트베일</option>

								<option value="스카이스킨">스카이스킨</option>

								<option value="스크루지느러미">스크루지느러미</option>

								<option value="스킬링크">스킬링크</option>

								<option value="스펙터가드">스펙터가드</option>

								<option value="슬로스타트">슬로스타트</option>

								<option value="습기">습기</option>

								<option value="승기">승기</option>

								<option value="승리의별">승리의별</option>

								<option value="시간벌기">시간벌기</option>

								<option value="시작의바다">시작의바다</option>

								<option value="심록">심록</option>

								<option value="심술꾸러기">심술꾸러기</option>

								<option value="싱크로">싱크로</option>

								<option value="쓱쓱">쓱쓱</option>

								<option value="아로마베일">아로마베일</option>

								<option value="아이스바디">아이스바디</option>

								<option value="아이스페이스">아이스페이스</option>

								<option value="악취">악취</option>

								<option value="애널라이즈">애널라이즈</option>

								<option value="어군">어군</option>

								<option value="얼음인분">얼음인분</option>

								<option value="에어록">에어록</option>

								<option value="여왕의위엄">여왕의위엄</option>

								<option value="열폭주">열폭주</option>

								<option value="엽록소">엽록소</option>

								<option value="예지몽">예지몽</option>

								<option value="오기">오기</option>

								<option value="오라브레이크">오라브레이크</option>

								<option value="옹골찬턱">옹골찬턱</option>

								<option value="옹골참">옹골참</option>

								<option value="용의턱">용의턱</option>

								<option value="우격다짐">우격다짐</option>

								<option value="원격">원격</option>

								<option value="위기회피">위기회피</option>

								<option value="위험예지">위험예지</option>

								<option value="위협">위협</option>

								<option value="유대변화">유대변화</option>

								<option value="유연">유연</option>

								<option value="유폭">유폭</option>

								<option value="의기양양">의기양양</option>

								<option value="의욕">의욕</option>

								<option value="의태">의태</option>

								<option value="이상한비늘">이상한비늘</option>

								<option value="이판사판">이판사판</option>

								<option value="인분">인분</option>

								<option value="일렉트릭메이커">일렉트릭메이커</option>

								<option value="일렉트릭스킨">일렉트릭스킨</option>

								<option value="일루전">일루전</option>

								<option value="일찍기상">일찍기상</option>

								<option value="자기과신">자기과신</option>

								<option value="자력">자력</option>

								<option value="자연회복">자연회복</option>

								<option value="잔비">잔비</option>

								<option value="잠복">잠복</option>

								<option value="재생력">재생력</option>

								<option value="저수">저수</option>

								<option value="저주받은바디">저주받은바디</option>

								<option value="적응력">적응력</option>

								<option value="전기엔진">전기엔진</option>

								<option value="전투무장">전투무장</option>

								<option value="절대안깸">절대안깸</option>

								<option value="점착">점착</option>

								<option value="정신력">정신력</option>

								<option value="정의의마음">정의의마음</option>

								<option value="정전기">정전기</option>

								<option value="젖은접시">젖은접시</option>

								<option value="조가비갑옷">조가비갑옷</option>

								<option value="주눅">주눅</option>

								<option value="증기기관">증기기관</option>

								<option value="지구력">지구력</option>

								<option value="질풍날개">질풍날개</option>

								<option value="짓궂은마음">짓궂은마음</option>

								<option value="천진">천진</option>

								<option value="천하장사">천하장사</option>

								<option value="철가시">철가시</option>

								<option value="철주먹">철주먹</option>

								<option value="초식">초식</option>

								<option value="촉촉바디">촉촉바디</option>

								<option value="촉촉보이스">촉촉보이스</option>

								<option value="축전">축전</option>

								<option value="치유의마음">치유의마음</option>

								<option value="컬리헤어">컬리헤어</option>

								<option value="퀵드로">퀵드로</option>

								<option value="클리어바디">클리어바디</option>

								<option value="타오르는불꽃">타오르는불꽃</option>

								<option value="탈">탈</option>

								<option value="탈피">탈피</option>

								<option value="터보블레이즈">터보블레이즈</option>

								<option value="테라볼티지">테라볼티지</option>

								<option value="테크니션">테크니션</option>

								<option value="텔레파시">텔레파시</option>

								<option value="통찰">통찰</option>

								<option value="투쟁심">투쟁심</option>

								<option value="트랜지스터">트랜지스터</option>

								<option value="트레이스">트레이스</option>

								<option value="틀깨기">틀깨기</option>

								<option value="틈새포착">틈새포착</option>

								<option value="파스텔베일">파스텔베일</option>

								<option value="파워스폿">파워스폿</option>

								<option value="퍼코트">퍼코트</option>

								<option value="펑크록">펑크록</option>

								<option value="페어리스킨">페어리스킨</option>

								<option value="페어리오라">페어리오라</option>

								<option value="포이즌힐">포이즌힐</option>

								<option value="포자">포자</option>

								<option value="풀모피">풀모피</option>

								<option value="프레셔">프레셔</option>

								<option value="프렌드가드">프렌드가드</option>

								<option value="프리즈스킨">프리즈스킨</option>

								<option value="프리즘아머">프리즘아머</option>

								<option value="플라워기프트">플라워기프트</option>

								<option value="플라워베일">플라워베일</option>

								<option value="플러스">플러스</option>

								<option value="피뢰침">피뢰침</option>

								<option value="픽업">픽업</option>

								<option value="필터">필터</option>

								<option value="하늘의은총">하늘의은총</option>

								<option value="하드록">하드록</option>

								<option value="하얀연기">하얀연기</option>

								<option value="해감액">해감액</option>

								<option value="헤롱헤롱바디">헤롱헤롱바디</option>

								<option value="헤비메탈">헤비메탈</option>

								<option value="혼연일체">혼연일체</option>

								<option value="화학변화가스">화학변화가스</option>

								<option value="흑의울음">흑의울음</option>

								<option value="흡반">흡반</option>

								<option value="힐링시프트">힐링시프트</option>




							</select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 360px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-characters-container"><span class="select2-selection__rendered" id="select2-characters-container" title="전체">전체</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-2 col-12 col-form-label">지방</label>



						<div class="col-lg-10 col-12">

							<div class="custom-select v2" style="width:100%">
						<!-- // 202000907 수정되었음 -->
								<select name="area" id="area">
 								<option value="">전체</option>
								<option value="관동지방">관동지방</option>

								<option value="성도지방">성도지방</option>

								<option value="호연지방">호연지방</option>

								<option value="신오지방">신오지방</option>

								<option value="하나지방">하나지방</option>

								<option value="칼로스지방">칼로스지방</option>

								<option value="알로라지방">알로라지방</option>

								<option value="가라르지방">가라르지방</option>

								<option value="미확인">미확인</option>

								<option value="히스이지방">히스이지방</option>

								</select>
							<div class="select-selected">전체</div><div class="select-items select-hide"><div>전체</div><div>관동지방</div><div>성도지방</div><div>호연지방</div><div>신오지방</div><div>하나지방</div><div>칼로스지방</div><div>알로라지방</div><div>가라르지방</div><div>미확인</div><div>히스이지방</div></div></div>


						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-2 col-12 col-form-label">도감번호</label>
						<div class="col-45">
							<input type="text" class="form-control" name="snumber" id="snumber" placeholder="1" value="1">
						</div>
						<div class="col-auto pr-0 pl-0 text-wh d-flex align-items-center">-</div>
						<div class="col-45">
							<input type="text" class="form-control" name="snumber2" id="snumber2" value="905">
						</div>
					</div>
				</div>
				<div class="row col-lg-5 col-12 no-gutters">
					<div class="col-lg-2 col-12 col-form-label pr-lg-4 text-right">타입</div>
					<div class="row col-lg-10 col-12 no-gutters type-wrp" id="typechform">

 



						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc0" value="노말">
								<i></i>
								<span style="background-color:#92999f"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-31-00-44246-1600155060.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_13-01-36-16035-1599278496.png" alt="">노말</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc1" value="불꽃">
								<i></i>
								<span style="background-color:#efa061"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-26-46070-1600155146.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_13-05-02-82946-1599278702.png" alt="">불꽃</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc2" value="물">
								<i></i>
								<span style="background-color:#608fcf"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-06-11404-1600155126.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_13-05-37-52039-1599278737.png" alt="">물</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc3" value="풀">
								<i></i>
								<span style="background-color:#7ab766"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-33-23-96585-1600155203.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_13-05-59-52868-1599278759.png" alt="">풀</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc4" value="전기">
								<i></i>
								<span style="background-color:#edd259"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-33-56-24195-1600155236.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-04-29-38571-1599307469.png" alt="">전기</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc5" value="얼음">
								<i></i>
								<span style="background-color:#8dccc0"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-43-75350-1600155163.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-05-08-37234-1599307508.png" alt="">얼음</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc6" value="격투">
								<i></i>
								<span style="background-color:#bc4b6a"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-30-54-93594-1600155054.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-07-30-25049-1599307650.png" alt="">격투</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc7" value="독">
								<i></i>
								<span style="background-color:#a16ec2"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-31-04-13797-1600155064.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-07-56-98415-1599307676.png" alt="">독</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc8" value="땅">
								<i></i>
								<span style="background-color:#ca7c50"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-31-48-89703-1600155108.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-08-45-76848-1599307725.png" alt="">땅</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc9" value="비행">
								<i></i>
								<span style="background-color:#95a8d9"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-32-51636-1600155152.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-09-21-65337-1599307761.png" alt="">비행</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc10" value="에스퍼">
								<i></i>
								<span style="background-color:#e57879"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-50-69336-1600155170.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-09-40-58655-1599307780.png" alt="">에스퍼</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc11" value="벌레">
								<i></i>
								<span style="background-color:#9bbf48"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-19-85302-1600155139.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-10-03-16670-1599307803.png" alt="">벌레</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc12" value="바위">
								<i></i>
								<span style="background-color:#c3b78f"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-12-15595-1600155132.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-05-26-54721-1599307526.png" alt="">바위</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc13" value="고스트">
								<i></i>
								<span style="background-color:#5769a7"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-30-57-35870-1600155057.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-05-42-65887-1599307542.png" alt="">고스트</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc14" value="드래곤">
								<i></i>
								<span style="background-color:#336cbe"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-02-47456-1600155122.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-05-57-97530-1599307557.png" alt="">드래곤</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc15" value="악">
								<i></i>
								<span style="background-color:#585365"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-32-38-19380-1600155158.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-06-19-16378-1599307579.png" alt="">악</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc16" value="강철">
								<i></i>
								<span style="background-color:#678d9e"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-30-51-10728-1600155051.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-06-33-91927-1599307593.png" alt="">강철</span>
							</label>
						</div>






						<div class="col-lg-25 col-3">
							<label class="btn-type btn-nomal">
								<input type="checkbox" class="sr-only" name="typetextc[]" id="typetextc17" value="페어리">
								<i></i>
								<span style="background-color:#dc94e1"><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-15_16-33-52-97374-1600155232.png" alt=""></span>
								<span><img src="https://data1.pokemonkorea.co.kr/newdata/2020/09/2020-09-05_21-07-05-51805-1599307625.png" alt="">페어리</span>
							</label>
						</div>




					</div>
				</div>

<input type="hidden" name="sortselval" id="sortselval" value="number asc,number_count asc">
<input type="hidden" name="typetextcs" id="typetextcs" value="">
				<!-- <div class="row col-3">
					<div class="col-2">지방</div>
					<button type="button"></button>
				</div> -->
				<div class="col-12 btn-wrap">
					<a href="javascript:;" onclick="searchforms()" class="btn btn-sm3 btn-skew btn-primary"><p>검색</p></a>
					<a href="javascript:;" id="reset" class="btn btn-sm3 btn-skew btn-dark"><p>초기화</p></a>
				</div>
		</div>
		</div>
			</form>
		<button class="no-style collapsed btn-detail" type="button" data-toggle="collapse" data-target="#detailed"><p>상세검색</p><p class="on">닫기</p></button>
	</div>




<form name="rsearchform" action="/pokedex" method="get">
</form>


	<section class="sect">
		
		<ul class="row list-book per1-1" id="pokedexlist">
 			<li class="col-lg-2 col-6" id="#pokedex_1">
				<a href="javascript:pokedex_detail(1, '1');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.001</p> 이상해씨</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_2">
				<a href="javascript:pokedex_detail(1, '2');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000201.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.002</p> 이상해풀</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_3">
				<a href="javascript:pokedex_detail(1, '3');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000301.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.003</p> 이상해꽃</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_4">
				<a href="javascript:pokedex_detail(1, '4');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000302.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.003</p> 메가이상해꽃</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_5">
				<a href="javascript:pokedex_detail(1, '5');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000303.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.003</p> 이상해꽃</h3>

						<p>거다이맥스의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_6">
				<a href="javascript:pokedex_detail(1, '6');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000401.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.004</p> 파이리</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_7">
				<a href="javascript:pokedex_detail(1, '7');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000501.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.005</p> 리자드</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_8">
				<a href="javascript:pokedex_detail(1, '8');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000601.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.006</p> 리자몽</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_9">
				<a href="javascript:pokedex_detail(1, '9');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000602.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.006</p> 메가리자몽X</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
												<span class="badge badge-quad badge-grass" style="background:#336cbe;color:#ffffff;">드래곤</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_10">
				<a href="javascript:pokedex_detail(1, '10');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000603.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.006</p> 메가리자몽Y</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_11">
				<a href="javascript:pokedex_detail(1, '11');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000604.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.006</p> 리자몽</h3>

						<p>거다이맥스의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_12">
				<a href="javascript:pokedex_detail(1, '12');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000701.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.007</p> 꼬부기</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#608fcf;color:#ffffff;">물</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_13">
				<a href="javascript:pokedex_detail(1, '13');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000801.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.008</p> 어니부기</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#608fcf;color:#ffffff;">물</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_14">
				<a href="javascript:pokedex_detail(1, '14');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000901.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.009</p> 거북왕</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#608fcf;color:#ffffff;">물</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_15">
				<a href="javascript:pokedex_detail(1, '15');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000902.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.009</p> 메가거북왕</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#608fcf;color:#ffffff;">물</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_16">
				<a href="javascript:pokedex_detail(1, '16');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000903.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.009</p> 거북왕</h3>

						<p>거다이맥스의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#608fcf;color:#ffffff;">물</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_17">
				<a href="javascript:pokedex_detail(1, '17');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001001.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.010</p> 캐터피</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
						 					</div>
				</a>
			</li>


			<li class="col-lg-2 col-6" id="#pokedex_18">
				<a href="javascript:pokedex_detail(1, '18');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001101.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.011</p> 단데기</h3>

						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
						 					</div>
				</a>
			</li>





		
			<li class="col-lg-2 col-6" id="#pokedex_19">
				<a href="javascript:pokedex_detail('2', '19');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001201.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.012</p> 버터플</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_20">
				<a href="javascript:pokedex_detail('2', '20');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001202.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.012</p> 버터플</h3>
						<p>거다이맥스의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_21">
				<a href="javascript:pokedex_detail('2', '21');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001301.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.013</p> 뿔충이</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_22">
				<a href="javascript:pokedex_detail('2', '22');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001401.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.014</p> 딱충이</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_23">
				<a href="javascript:pokedex_detail('2', '23');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001501.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.015</p> 독침붕</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_24">
				<a href="javascript:pokedex_detail('2', '24');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001502.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.015</p> 메가독침붕</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_25">
				<a href="javascript:pokedex_detail('2', '25');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001601.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.016</p> 구구</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_26">
				<a href="javascript:pokedex_detail('2', '26');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001701.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.017</p> 피죤</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_27">
				<a href="javascript:pokedex_detail('2', '27');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001801.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.018</p> 피죤투</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_28">
				<a href="javascript:pokedex_detail('2', '28');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001802.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.018</p> 메가피죤투</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_29">
				<a href="javascript:pokedex_detail('2', '29');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001901.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.019</p> 꼬렛</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_30">
				<a href="javascript:pokedex_detail('2', '30');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/001902.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.019</p> 꼬렛</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#585365;color:#ffffff;">악</span>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_31">
				<a href="javascript:pokedex_detail('2', '31');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002001.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.020</p> 레트라</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_32">
				<a href="javascript:pokedex_detail('2', '32');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002002.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.020</p> 레트라</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#585365;color:#ffffff;">악</span>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_33">
				<a href="javascript:pokedex_detail('2', '33');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002101.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.021</p> 깨비참</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_34">
				<a href="javascript:pokedex_detail('2', '34');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002201.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.022</p> 깨비드릴조</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_35">
				<a href="javascript:pokedex_detail('2', '35');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002301.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.023</p> 아보</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_36">
				<a href="javascript:pokedex_detail('2', '36');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002401.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.024</p> 아보크</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>





			<li class="col-lg-2 col-6" id="#pokedex_37">
				<a href="javascript:pokedex_detail('3', '37');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002501.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.025</p> 피카츄</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#edd259;color:#ffffff;">전기</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_38">
				<a href="javascript:pokedex_detail('3', '38');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002502.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.025</p> 피카츄</h3>
						<p>거다이맥스의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#edd259;color:#ffffff;">전기</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_39">
				<a href="javascript:pokedex_detail('3', '39');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002601.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.026</p> 라이츄</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#edd259;color:#ffffff;">전기</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_40">
				<a href="javascript:pokedex_detail('3', '40');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002602.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.026</p> 라이츄</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#edd259;color:#ffffff;">전기</span>
												<span class="badge badge-quad badge-grass" style="background:#e57879;color:#ffffff;">에스퍼</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_41">
				<a href="javascript:pokedex_detail('3', '41');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002701.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.027</p> 모래두지</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_42">
				<a href="javascript:pokedex_detail('3', '42');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002702.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.027</p> 모래두지</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#8dccc0;color:#ffffff;">얼음</span>
												<span class="badge badge-quad badge-grass" style="background:#678d9e;color:#ffffff;">강철</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_43">
				<a href="javascript:pokedex_detail('3', '43');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002801.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.028</p> 고지</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_44">
				<a href="javascript:pokedex_detail('3', '44');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002802.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.028</p> 고지</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#8dccc0;color:#ffffff;">얼음</span>
												<span class="badge badge-quad badge-grass" style="background:#678d9e;color:#ffffff;">강철</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_45">
				<a href="javascript:pokedex_detail('3', '45');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002901.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.029</p> 니드런♀</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_46">
				<a href="javascript:pokedex_detail('3', '46');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003001.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.030</p> 니드리나</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_47">
				<a href="javascript:pokedex_detail('3', '47');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003101.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.031</p> 니드퀸</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_48">
				<a href="javascript:pokedex_detail('3', '48');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003201.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.032</p> 니드런♂</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_49">
				<a href="javascript:pokedex_detail('3', '49');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003301.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.033</p> 니드리노</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_50">
				<a href="javascript:pokedex_detail('3', '50');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003401.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.034</p> 니드킹</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_51">
				<a href="javascript:pokedex_detail('3', '51');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003501.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.035</p> 삐삐</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#dc94e1;color:#ffffff;">페어리</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_52">
				<a href="javascript:pokedex_detail('3', '52');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003601.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.036</p> 픽시</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#dc94e1;color:#ffffff;">페어리</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_53">
				<a href="javascript:pokedex_detail('3', '53');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003701.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.037</p> 식스테일</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_54">
				<a href="javascript:pokedex_detail('3', '54');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003702.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.037</p> 식스테일</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#8dccc0;color:#ffffff;">얼음</span>
						 					</div>
				</a>
			</li>





			<li class="col-lg-2 col-6" id="#pokedex_55">
				<a href="javascript:pokedex_detail('4', '55');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003801.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.038</p> 나인테일</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#efa061;color:#ffffff;">불꽃</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_56">
				<a href="javascript:pokedex_detail('4', '56');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003802.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.038</p> 나인테일</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#8dccc0;color:#ffffff;">얼음</span>
												<span class="badge badge-quad badge-grass" style="background:#dc94e1;color:#ffffff;">페어리</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_57">
				<a href="javascript:pokedex_detail('4', '57');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003901.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.039</p> 푸린</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#dc94e1;color:#ffffff;">페어리</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_58">
				<a href="javascript:pokedex_detail('4', '58');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004001.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.040</p> 푸크린</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
												<span class="badge badge-quad badge-grass" style="background:#dc94e1;color:#ffffff;">페어리</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_59">
				<a href="javascript:pokedex_detail('4', '59');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004101.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.041</p> 주뱃</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_60">
				<a href="javascript:pokedex_detail('4', '60');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004201.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.042</p> 골뱃</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
												<span class="badge badge-quad badge-grass" style="background:#95a8d9;color:#ffffff;">비행</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_61">
				<a href="javascript:pokedex_detail('4', '61');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004301.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.043</p> 뚜벅쵸</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_62">
				<a href="javascript:pokedex_detail('4', '62');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004401.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.044</p> 냄새꼬</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_63">
				<a href="javascript:pokedex_detail('4', '63');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004501.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.045</p> 라플레시아</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_64">
				<a href="javascript:pokedex_detail('4', '64');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004601.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.046</p> 파라스</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_65">
				<a href="javascript:pokedex_detail('4', '65');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004701.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.047</p> 파라섹트</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#7ab766;color:#ffffff;">풀</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_66">
				<a href="javascript:pokedex_detail('4', '66');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004801.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.048</p> 콘팡</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_67">
				<a href="javascript:pokedex_detail('4', '67');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004901.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.049</p> 도나리</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#9bbf48;color:#ffffff;">벌레</span>
												<span class="badge badge-quad badge-grass" style="background:#a16ec2;color:#ffffff;">독</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_68">
				<a href="javascript:pokedex_detail('4', '68');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005001.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.050</p> 디그다</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_69">
				<a href="javascript:pokedex_detail('4', '69');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005002.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.050</p> 디그다</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
												<span class="badge badge-quad badge-grass" style="background:#678d9e;color:#ffffff;">강철</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_70">
				<a href="javascript:pokedex_detail('4', '70');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005101.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.051</p> 닥트리오</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_71">
				<a href="javascript:pokedex_detail('4', '71');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005102.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.051</p> 닥트리오</h3>
						<p>알로라의 모습</p>
												<span class="badge badge-quad badge-grass" style="background:#ca7c50;color:#ffffff;">땅</span>
												<span class="badge badge-quad badge-grass" style="background:#678d9e;color:#ffffff;">강철</span>
						 					</div>
				</a>
			</li>



			<li class="col-lg-2 col-6" id="#pokedex_72">
				<a href="javascript:pokedex_detail('4', '72');">
					<div class="img">
						<div class="tumb-wrp">
							<img src="https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005201.png" alt="" class="img-fluid">
						</div>
					</div>
					<div class="bx-txt">
						<h3><p>No.052</p> 나옹</h3>
						<p></p>
												<span class="badge badge-quad badge-grass" style="background:#92999f;color:#ffffff;">노말</span>
						 					</div>
				</a>
			</li>




</ul>

			<div class="text-center" id="morebtn" style="display: none;">
				<a href="javascript:;" class="btn-lg btn-skew btn-dark btn-details" onclick="listmore()"><p>더보기</p></a>
			</div>


	</section>
	<section>
		<div class="container no-result" id="noresult" style="display:none;">
			<div class="text-center">
				<i class="img"></i>
				<h3>검색결과가 없습니다.</h3>
				<p>다른 키워드로 검색해주세요.</p>
			</div>
		</div>
	</section>



</div>

    
    
    
    <!-- Js Plugins -->
    <script src="/agency/js/jquery-3.3.1.min.js"></script>
    <script src="/agency/js/bootstrap.min.js"></script>
    <script src="/agency/js/jquery.nice-select.min.js"></script>
    <script src="/agency/js/jquery-ui.min.js"></script>
    <script src="/agency/js/jquery.nicescroll.min.js"></script>
    <script src="/agency/js/jquery.barfiller.js"></script>
    <script src="/agency/js/jquery.magnific-popup.min.js"></script>
    <script src="/agency/js/jquery.slicknav.js"></script>
    <script src="/agency/js/owl.carousel.min.js"></script>
    <script src="/agency/js/main.js"></script>

    <!--직접 만든 js-->
    <script src="/agency/js/yang.js"></script>
    <script src="/agency/js/slide.js"></script>

    <!--카카오맵 출력하려면 필요한 키값-->
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef81fd1e646b0a15481c65c77c4029e6&libraries=services"
    ></script>
    <!--카카오 맵 js-->
    <script src="/agency/js/kakaoMap.js"></script>
    
    
    <script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="/js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
<script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a0a025e110dde0902210e297400a7be"></script>
<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>

<script type="text/javascript">

  <script>
      $("#filter-search").click(function name(params) {
        var regex = /[^0-9.;\-]/g;
        var result = $("#radius").val().replace(regex, "");
        console.log(result);
      });
    </script>

    <script>
      const slider = document.querySelector(".items");
      let isMouseDown = false;
      let startX, scrollLeft;

      slider.addEventListener("mousedown", (e) => {
        isMouseDown = true;
        slider.classList.add("active");

        startX = e.pageX - slider.offsetLeft;
        scrollLeft = slider.scrollLeft;
      });

      slider.addEventListener("mouseleave", () => {
        isMouseDown = false;
        slider.classList.remove("active");
      });

      slider.addEventListener("mouseup", () => {
        isMouseDown = false;
        slider.classList.remove("active");
      });

      slider.addEventListener("mousemove", (e) => {
        if (!isMouseDown) return;

        e.preventDefault();
        const x = e.pageX - slider.offsetLeft;
        const walk = (x - startX) * 1;
        slider.scrollLeft = scrollLeft - walk;
      });
    </script>
    
    <footer class="footer bg-dark text-white">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav"><img href="#" src="/img/WithYouTitle.png" class="footerLogo" >
            </ul>
            </div>
            <div class="col-md-4">
                <ul class="nav justify-content-center">
                    <li class="nav-item footerFont"><p class="nav-link">주소 : 서울특별시 금천구 가산디지털2로 123 2차) 월드 메르디앙</p></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="nav justify-content-center">
                    <li class="nav-item footerFont"><p class="nav-link">고객센터: 02-2005-8523</p></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="nav justify-content-center">
                    <li class="nav-item footerFont"><p class="nav-link">이메일: swkosmo@daum.net</p></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
    
    
   </body>
 </html>
