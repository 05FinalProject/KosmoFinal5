<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>너와 함개</title>

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

    <link rel="stylesheet" href="css/mainPage.css" type="text/css">
    
    <style type="text/css">
     #tb1 {
    	margin: 30px 30px;
    
    } 
    
     #tb2 {
    	margin: 30px 30px;
    	
    } 
    
    </style>
    

    
	</head>
<body class="single single-post">

<%@include file="../Header.jsp" %>

<main class="main">
    <div id="post-1" class="post type-post post-1 has-post-thumbnail comment-open">
   
    	 <!-- 이미지 div -->
    	 
        <div class="container post-container bg-white col-md-6" id="tb1">
            <div class="row justify-content-center post-row no-gutters">
                <div class="col-12 col-sm-11 col-md-10 post-thumbnail-col">
                    <img class="img-fluid post-thumbnail" src="../pictures/placeholder/1110x520.svg" alt="Post">
                </div>
                <div class="col-12 col-sm-11 col-md-10 col-lg-8 post-col">
                    <div class="post-content">
                        <p>게시글 내용</p>
                    </div>
                    <hr/>
                </div>
            </div>
        </div>
       

		<!-- 게시글 내용 div -->
        <div class="container comments-container bg-white" id="tb2">
            <div class="row justify-content-center comments-row no-gutters">
                <div class="col-12 col-sm-11 col-md-10 col-lg-8">
                    <h6 class="comments-title font-weight-bold">
                        댓글 <span class="comments-number">(5)</span>
                    </h6>

                    <ul class="comment-list list-unstyled">
                        <li class="media">
                            <img class="avatar photo rounded-circle mr-2 mr-sm-3 mr-md-4"
                                 src="../pictures/placeholder/65x65.svg" alt="Avatar">
                            <div class="media-body">
                                <div class="d-bock d-md-flex w-100 justify-content-between">
                                    <h5 class="comment-title">
                                        <a href="#">닉네임</a>
                                    </h5>
                                    <div class="comment-date">
                                        <a href="#">May 24, 2017 at 11:47 am</a>
                                    </div>
                                </div>
                                <div class="comment-text">
                                    <p>댓글 내용</p>
                                </div>
                                <ul class="comment-meta">
                                    <li>
                                        <a href="#" class="comment-edit">
                                            <i class="fa fa-pencil-alt"></i> Edit
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="comment-reply">
                                            <i class="fas fa-reply fa-flip-horizontal"></i> Reply
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                 
               
                    </ul>

                    <hr/>
          

                    <div id="respond" class="comment-respond">
                        <h4 id="reply-title" class="comment-reply-title font-weight-bold">
                            Leave a Reply
                        </h4>
                        <form id="commentform" class="comment-form form-horizontal">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" placeholder="Name (required)"
                                           aria-required="true" required="required" aria-label="Name">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" placeholder="Email (required)"
                                           aria-required="true" required="required" aria-label="Email">
                                </div>
                            </div>
                      
                            <div class="form-group row">
                                <div class="col">
                                    <textarea class="form-control" name="comment" rows="8" title="Comment"
                                              placeholder="Comment" aria-required="true" required="required"></textarea>
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col">
                                    <input name="submit" type="submit" id="submit"
                                           class="btn btn-primary btn-lg text-uppercase font-weight-bold w-15x"
                                           value="Post Comment">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>



<%@include file="../Footer.jsp" %>

<script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
<script type="text/javascript" src="/js/magnific-popup.min.js?ver=1.1.0"></script>
<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>

</body>
</html>