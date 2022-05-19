<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
          <h4 class="modal-title fontLarge"> </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body font1">
         	비밀번호
        </div>
        <input type="text" class="form-control col-8 inputCenter" placeholder="Search" aria-label="Search">
        
        <!-- Modal footer -->
        <div class="modal-footer">
        	<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>



<main class="main container">
    <div class="row">
        <div class="col-12 col-lg-8">
            <div class="pet-grid-posts">
                <div class="row">
                    <div class="pet-grid-col col-12 col-md-6">
                        <div id="post-1" class="lana_pet type-lana_pet post-1 card pet-grid-card h-100">
                            	
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    Pet #1
                                </h5>
                              
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a class="more-link card-link" data-toggle="modal" data-target="#myModal" content="Pet #1">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="pet-grid-col col-12 col-md-6">
                        <div id="post-2" class="lana_pet type-lana_pet post-2 card pet-grid-card h-100">
                            
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    Pet #2
                                </h5>
                                
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a href="#" class="more-link card-link">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="pet-grid-col col-12 col-md-6">
                        <div id="post-3" class="lana_pet type-lana_pet post-3 card pet-grid-card h-100">
                            
                       
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    Pet #3
                                </h5>
                                
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a href="#" class="more-link card-link">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="pet-grid-col col-12 col-md-6">
                        <div id="post-4" class="lana_pet type-lana_pet post-4 card pet-grid-card h-100">
                            
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    Pet #4
                                </h5>
                                
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a href="#" class="more-link card-link">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="pet-grid-col col-12 col-md-6">
                        <div id="post-5" class="lana_pet type-lana_pet post-5 card pet-grid-card h-100">
                            
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    Pet #5
                                </h5>
                                
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a href="#" class="more-link card-link">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="pet-grid-col col-12 col-md-6">
                        <div id="post-6" class="lana_pet type-lana_pet post-6 card pet-grid-card h-100">
                            
                            <div class="card-body">
                                <h5 class="post-title card-title">
                                    Pet #6
                                </h5>
                                
                            </div>
                            <div class="card-footer">
                                <p class="card-text">
                                    <a href="#" class="more-link card-link">
                                        들어가기 <i class="lana-icon-arrow-right text-primary"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <nav class="navigation pagination justify-content-between bg-transparent text-uppercase"
                     role="navigation">
                    <a class="prev disabled" href="#">
                        Prev
                    </a>
                    <div class="nav-links">
                        <ul class="page-numbers">
                            <li><span aria-current="page" class="page-numbers current">1</span></li>
                            <li><a class="page-numbers" href="#">2</a></li>
                            <li><span class="page-numbers dots">…</span></li>
                            <li><a class="page-numbers" href="#">4</a></li>
                        </ul>
                    </div>
                    <a class="next" href="#">
                        Next
                    </a>
                </nav>
            </div>
        </div>
        <div class="col-12 col-lg-4 mt-4 mt-lg-0">
            <div class="widget-sidebar pet-sidebar">
            <legend class="font">채팅방검색</legend>
                
                    <div class="widget">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </div>
                
                <div class="widget widget_tag_cloud">
                    <div class="tagcloud text-center">
                        <a id="makeRoom" class="tag-cloud-link "  >채팅방만들기</a>
                    </div>
                </div>
                <form class="pet-filter-form" id="frm">
                <div id="insertRoom" >
                <div class="widget1">
                	<div>
                    <legend class="font">방이름</legend>
                    </div>
                    <div class="input-group">
                        <input type="text" class="form-control in" name="roomNum" required >
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
                  
                    <!-- <br/>
                    <div class="widget widget_tag_cloud">
                    <div class="tagcloud right" >
                    	
                        <input class="tag-cloud-link " id="sure" type="submit" >확인</a>
                        <a class="tag-cloud-link " id="up" >취소</a>     
                    </div>
                </div> -->
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

$('.card-link').click(function(){
	//alert('1')
	$('h4.modal-title').text($(this).attr('content'))
})



</script>
</body>
</html>