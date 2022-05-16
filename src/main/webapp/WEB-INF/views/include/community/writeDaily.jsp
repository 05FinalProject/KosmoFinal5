<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>너와함개</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
          
      
   	<style type="text/css">
   	
   	#post-1 {
   		margin-top:70px;
   		margin-bottom:70px;
   	}
   	
   	#writeDaily-imgupload {
   		margin-top:20px;
   		background:#f8b03a;
   		border:#f8b03a;
   		color:white;
   		height:38px;
   		width:158px;
   		border-radius:4px;
   		font-weight:bold;
   	}
   	
   	#wrtieDaily-cancle {
   		margin-right:20px;
   		background:#b7b7b7;
   		border:#b7b7b7;
   		color:white;
   		height:40px;
   		width:191px;
   		border-radius:4px;
   		font-weight:bold;
   		
   	}
   	
   	#writeDaily-btn {
   		background:#f8b03a;
   		border:#f8b03a;
   		color:white;
   		height:40px;
   		width:191px;
   		border-radius:4px;
   		font-weight:bold;
   	}
   	
   	#btn-group {
   		margin-top:30px;
   	}
   	
   
   	</style>       
          
          
</head>

<%@include file="../Header.jsp"%>

<body class="page page-template-default">



<main class="main">
    <div id="post-1" class="page type-page post-1">
        <div class="container post-container bg-white">
            <div class="row justify-content-start post-row no-gutters">
                <div class="col-12 px-0 px-sm-3 col-md-10 offset-md-1 px-md-0 col-xl-9">
                    <div class="post-content">
                        <h3 class="font-weight-bold">일상공유</h3>
                        
                        <form id="contactform" class="contact-form mt-5">
                       
                            <div class="form-group row">
                                <div class="col">
                                	<label class="font-weight-bold">이미지 등록<span style="color:red">*</span></label>
                                    <input type="text" class="form-control" aria-required="true" aria-label="Subject">
                                    <button id="writeDaily-imgupload" type="submit" style="float:right"">이미지 업로드</button>
                                </div>
                            
                            </div>
                            <div class="form-group row">
                                <div class="col">
                                	<label class="font-weight-bold">글작성<span style="color:red">*</span></label>
                                    <textarea class="form-control" name="message" rows="8""
                                              aria-required="true" aria-label="Message"></textarea>
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col" id="btn-group">
                                	<button id="wrtieDaily-cancle" type="submit"">취소</button>
                                    <button id="writeDaily-btn" type="submit"">등록</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<%@include file="../Footer.jsp"%>

<script type="text/javascript" src="../js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="../js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="../js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="../js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="../js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="../js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="../js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="../js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="../js/custom-theme.js?ver=1.0.0"></script>

</body>
</html>