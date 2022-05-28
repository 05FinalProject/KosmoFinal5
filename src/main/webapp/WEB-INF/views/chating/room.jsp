<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Lana Pet - Archive (Pet)</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	 
    <link rel="stylesheet" id="montserrat-css"
          href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link rel="stylesheet" id="open-sans-css"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i">
	<link rel="stylesheet" id="animate-css" href="../css/chating/chatingRoom.css" type="text/css">
    <link rel="stylesheet" id="animate-css" href="../css/animate.min.css?ver=3.7.2" type="text/css" media="all">
    <link rel="stylesheet" id="font-awesome-css" href="../css/font-awesome.min.css?ver=5.15.4" type="text/css"
          media="all">
    <link rel="stylesheet" id="bootstrap-css" href="../css/bootstrap.min.css?ver=4.6.0" type="text/css" media="all">
    <link rel="stylesheet" id="smartmenus-bootstrap-css" href="../css/smartmenus-bootstrap.min.css?ver=1.1.1"
          type="text/css" media="all">
    <link rel="stylesheet" id="swiper-css" href="../css/swiper.min.css?ver=4.5.3" type="text/css" media="all">
    <link rel="stylesheet" id="magnific-popup-css" href="../css/magnific-popup.min.css?ver=1.1.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-icon-css" href="../css/lana-pet-icon.min.css?ver=1.0.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-theme-css" href="../css/lana-pet-theme.min.css?ver=1.0.0" type="text/css"
          media="all">
    <link rel="stylesheet" id="lana-pet-print-css" href="../css/lana-pet-print.min.css?ver=1.0.0" type="text/css"
          media="print">
          <script src="https://kit.fontawesome.com/23b331c6f8.js"
   crossorigin="anonymous"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
</head>
<body class="archive post-type-archive post-type-archive-lana_pet">

<%@ include file="../include/Header.jsp" %>
<legend class="fontLarge">채팅방</legend>
<div class="container col-12 col-lg-4 ">
  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="fontLarge" id="modalRoom"> </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
       
        <form action="chatingRoom" method="post" id="modalForm">
        <input type="hidden" name="roomNumber" id="modalRoomNum" value="" />
        <input type="hidden" name="roomName" id="modalRoomName" value="" />
        <input type="hidden" name="roomMember" id="modalRoomMember" value="${email}" >
        <div class="modal-body font1">
         	비밀번호
        </div>
        <input type="text" name="roomPass" id="modalRoomPass" class="form-control col-8 inputCenter">
        <label class="fontRed" id="passWrong" >비밀번호가 맞지않습니다,다시 확인하세요.</label>
        <!-- Modal footer -->
        <div class="modal-footer">
        	<button type="button" class="btn btn-primary" id="goInRoom">확인</button>
          <button type="button" class="btn btn-secondary" id="none" data-dismiss="modal">취소</button>
        </div>
        </form>
      </div>
    </div>
  </div>
  
</div>



<main class="main container">
    <div class="row">
        <div class="col-12 col-lg-8">
            <div class="pet-grid-posts">
                <div class="row" id="roomList">
                    <c:forEach var="vo" items="${list}">
                    <div class="pet-grid-col col-12 col-md-6">
                        <div class="lana_pet type-lana_pet post-1 card pet-grid-card h-100">
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    ${vo.roomName} #${vo.roomNumber}
                                </h5>
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a class="more-link card-link" data-toggle="modal" data-target="#myModal" content="${vo.roomName} #${vo.roomNumber}">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    </c:forEach>
                </div>

                <nav class="navigation pagination justify-content-between bg-transparent text-uppercase"
                     role="navigation">
                    <div class="nav-links">
						<c:set var="recordsCnt" value="${count}" />
						<c:set var="jspFile" value="room?" />
						<c:set var="perpage" value="6" />
					</div>
					<c:if test="${count>6}">
					<!-- include 페이징  jsp파일  -->
					<%@include file="../include/paging.jsp"%>
					</c:if>
                </nav>
            </div>
        </div>
        <div class="col-12 col-lg-4 mt-4 mt-lg-0">
            <div class="widget-sidebar pet-sidebar">
            <legend class="font">채팅방검색</legend>
                
                    <div class="widget">
                    <div class="input-group">
                        <input type="number" min="1" class="form-control" id="searchInput" placeholder="Search"  aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-primary" id="roomSearch" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </div>
                
                <div class="widget widget_tag_cloud">
                    <div class="tagcloud text-center">
                        <a id="makeRoom" class="tag-cloud-link">채팅방만들기</a>
                    </div>
                </div>
                <form class="pet-filter-form" action="chatingRoom" id="frm" method="post" >
                <input type="hidden" name="roomMember" id="roomMember" value="${email}" >
                <div id="insertRoom" >
                <div class="widget1">
                	<div>
                    <legend class="font">방이름</legend>
                    </div>
                    <div class="input-group">
                        <input type="text" class="form-control in" name="roomName" required >
                    </div>
                     </div>
                  
                    <div>
                    <legend class="font">비밀번호</legend>
                    </div>
                 	<div class="input-group">
                       <input type="text" class="form-control in"  name="roomPass" required >
                    </div>
                  
                   <input type="button" id="up" class="btn1 btn-secondary" value="취소" />
                   <input type="submit"  class="btn1 btn-primary" value="확인" />
                  
                  </div>
                </form>
            </div>
        </div>
    </div>
</main>



<%@ include file="../include/Footer.jsp" %>

<script type="text/javascript" src="../js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="../js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="../js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="../js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="../js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="../js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="../js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="../js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="../js/custom-theme.js?ver=1.0.0"></script>
<script type="text/javascript">

$('#makeRoom').click(function(){
	
	$('#insertRoom').slideDown()
})

$('#up').click(function(){
	$('#insertRoom').slideUp()
	$('.in').val('')
	
})



$('#none').click(function(){
	$('.inputCenter').val('')
	$('.fontRed').slideUp()
})

$('.more-link').click(function(){
	
	
	//modal 방이름이랑 방번호 주기
	$('#modalRoom').text($(this).attr('content'))
	//modal 방번호 값을 주기
	$('#modalRoomNum').val($(this).attr('content').split('#')[1]) 
	
	$('#modalRoomName').val($('#modalRoom').text().split('#')[0].trim())
	$('#modalRoomNum').val($('#modalRoomNum').val())

})


$('#goInRoom').click(function(e){
	$.ajax({
		url:'/api/checkRoomPass',
		data:{roomNumber:$('#modalRoomNum').val(),roomPass:$('#modalRoomPass').val()},
		type:'get',
		success:function(data){
			if(data=="yes"){
				$('#modalForm').submit()
				
			}else{
				$('#passWrong').slideDown()
				
			}
		}
	})
})

$('#roomSearch').click(function(){
	
	$.ajax({
		url:'/api/roomSearch',
		data:{roomNumber:$('#searchInput').val()}, 
		type:'get',
		success:function(data){
			$('#roomList').empty()
			
		
			data.forEach(function(d){
				$('#roomList').append('<div class="pet-grid-col col-12 col-md-6">'+
                        '<div class="lana_pet type-lana_pet post-1 card pet-grid-card h-100">'+
                        '<div class="card-body">'+
                           ' <h5 class="post-title card-title">'+
                                d.roomName+' #'+d.roomNumber+
                            '</h5>'+
                        '</div>'+
                        '<div class="card-footer">'+
                            '<p class="card-text">'+
                                '<a class="more-link card-link" onclick="search()" data-toggle="modal" data-target="#myModal" content="'+d.roomName+' #'+d.roomNumber+'">들어가기 <i class="lana-icon-arrow-right text-primary"></i>'+
                                '</a>'+
                            '</p>'+
                        '</div>'+
                    '</div>'+
                '</div>').ready(function(){
                	$('.more-link').click(function(){
                		
                		
                		//modal 방이름이랑 방번호 주기
                		$('#modalRoom').text($(this).attr('content'))
                		//modal 방번호 값을 주기
                		$('#modalRoomNum').val($(this).attr('content').split('#')[1]) 
                		
                		$('#modalRoomName').val($('#modalRoom').text().split('#')[0].trim())
                		$('#modalRoomNum').val($('#modalRoomNum').val())

                	})
                })
				
			})
			
	
		}
	})
})





</script>
</body>
</html>