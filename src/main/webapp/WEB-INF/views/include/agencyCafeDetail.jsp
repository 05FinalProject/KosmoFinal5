<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

   .modal{ 
  position:fixed; width:100%; height:100%; z-index: 1000; background: rgba(0,0,0,0.8); top:0; left:0; display:none;
}

.modal_content{
  
  width:28%; 
  background:#fff; border-radius:20px;
  position:fixed; top:50%; left:50%;
  
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:30px; cursor:pointer;
  display:flex;
  position: absolute;
  transform: translate(-50%, -50%);
   
}

.siren {
    	width:24px;
    }
    
   .form-control2{
    
         width:100%;
         height:100%;
         background:#fff58c; 
        
    } 
    
    #btn1{
    
    width:150px;
    height:50px;
    color: black;
    margin: auto;
    }
    
      </style>
  </head>

<%@include file="./Header.jsp" %>
  
  <body class="home page page-template-template-lana-editor">
   
  
  <!-- Listing Section Begin -->
    <section class="listing-details spad">
     
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="listing__details__text">
        
             
             <form:form commandName="post">
     <input name="agencyNum" type="hidden"  value="${vo.agencyNum }" /> 
              <div class="listing__details__gallery">
               
                <div class="listing__details__gallery__pic">
                  <div class="listing__details__gallery__item">
                    <img
                      class="listing__details__gallery__item__large"
                      src="${cafe.agencyImage }"
                      alt=""
                    />
                    <span><i class="fa fa-camera"></i> 170 Image</span>
                     
                  </div>
                 <h4>${cafe.agencyName }</h4>
                </div>
              </div>
            
              
              
             <!--*********리뷰 테이블 ***********************************--> 
              <div class="listing__details__comment">
                <h4>리뷰</h4>
                
			
              <!-- ********* 1칸 리뷰 테이블 *******--> 
                <div class="listing__details__comment__item">
                     <c:forEach var="review" items="${reviews}"  varStatus="vs">
			
			
			
                  <div class="listing__details__comment__item__pic">
                    <img
                      src=""
                      alt="post"
                    />
                  </div>
                  <div class="listing__details__comment__item__text">
                    <div class="listing__details__comment__item__rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                  
                    <span> 작성일:${review.reviewInsertdate }</span>
                    <h5></h5>
                    
                    <p>
                    내용:${review.reviewContent }
                    </p>
                    
                    <ul>
                      <span><img class="siren" src="../../img/siren.png"></span>
                     
                    </ul>
                  </div>
                  
    
  <!-- 모달 신고창 띄우기 ************************************************* --> 
    
    <div class="modal" >
  <div class="modal_content" 
       title="클릭하면 창이 닫힙니다." style="padding-top: 20px;padding-bottom: 20px;">
       
      
    
    <div class="col-12 mt-4 mt-lg-0">
    
    <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
    
   

<h4>회원 신고하기</h4>
    
            <div class="widget-sidebar pet-sidebar">
                
              
                 <div class="padding-6">
                  <div class="gen-after-report">
                     <div class="gen-extra-report">

                   <ul>
                   
                    <li>
                    <div style="float: left">신고 작성자:</div>
                    <div style="float: left">홍길동</div>
                     </li>
                     <br>
                    
                    <li>
                     <div style="float: left">신고 내용:</div><br>
                     <div style="float: center">Streamlab is a long established fact that a reader will be distracted by the readable content of a page when Streamlab at its layout. The point of using Lorem Streamlab is that it has a more-or-less normal distribution of Streamlab as opposed Streamlab</div>
                     </li>
                     
                        
                   </ul>
                   </div> 
</div>
</div>

 
<div id="water" >
   <div class="form-group">

<select class="form-control2" style="text-align-last:center" >
<option >게시글 도배</option>
<option>욕설/비방</option>
<option>음란성</option>
<option>광고/홍보성</option>
<option>개인정보 유출</option>
<option>저작권 불법 도용</option>
<option>기타</option>
</select>
</div>
</div>  
</div>                  
                  
                    <button type="submit" id="btn1" class="btn btn-primary btn-block font-weight-bold text-uppercase">
                        신고하기
                    </button>
                
            </div>
        </div>
    
    </div>
                  
   <!-- 모달창 테이블 끝 ******************************************************** -->               
                  
                  </c:forEach>
            
                </div>
               
         </form:form>
                <!--******************************-->
                
              </div>
              <!--******* 테이블 끝 ******-->
              
              
             
             <!--******* 리뷰 작성 테이블 ******************-->
              
             
              <div class="listing__details__review">
                <h4>리뷰작성</h4>
                <form action="/include/insertReview" method="post"  >
                <input type="hidden" name="userEmail" value="${sessionScope.userEmail}">
                <input type="hidden" name="agencyNum" value="${cafe.agencyNum}">
                  <textarea placeholder="Review" name="reviewContent"></textarea>
                  <button type="submit" class="site-btn">작성</button>
                </form>
              </div>

           <!--******* 리뷰 작성 테이블 ******************--> 
            </div>
          </div>
          
          <div class="col-lg-4" >
            <div class="listing__sidebar" >
              <div class="listing__sidebar__contact">
                <div class="listing__sidebar__contact__map">
                 
      <div id="map" style="width: 100%; height: 100%"></div>
    
                </div>
                <div class="listing__sidebar__contact__text">
                  <h4>${cafe.agencyName }</h4>
                  <ul>
                    <li>
                      <span class="icon_pin_alt"></span>${cafe.agencyAddress }
                    </li>
                    <li><span class="icon_phone"></span>${cafe.agencyTel }</li>
                    
                 </ul>


                <!--  **************-->
                  
                </div>
              </div>
             
            </div>
          </div>
          
       </div>
     
    </section>
    <!-- Listing Section End -->

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

 
      $("#filter-search").click(function name(params) {
        var regex = /[^0-9.;\-]/g;
        var result = $("#radius").val().replace(regex, "");
        console.log(result);
      });
      
      

	  $(".siren").click(function(){
		$(".modal").fadeIn();
	  });
	  
	  $(".close").click(function(){
	    $(".modal").fadeOut();
	  });
	  
    </script>

    
    
    
<!--********** footer  ***********************************************************************-->

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
    
   </body>
 </html>
