<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<link rel="stylesheet" id="animate-css"
	href="/css/animate.min.css?ver=3.7.2" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-css"
	href="/css/font-awesome.min.css?ver=5.15.4" type="text/css" media="all">
<link rel="stylesheet" id="bootstrap-css"
	href="/css/bootstrap.min.css?ver=4.6.0" type="text/css" media="all">
<link rel="stylesheet" id="smartmenus-bootstrap-css"
	href="/css/smartmenus-bootstrap.min.css?ver=1.1.1" type="text/css"
	media="all">
<link rel="stylesheet" id="swiper-css"
	href="/css/swiper.min.css?ver=4.5.3" type="text/css" media="all">
<link rel="stylesheet" id="magnific-popup-css"
	href="/css/magnific-popup.min.css?ver=1.1.0" type="text/css"
	media="all">
<link rel="stylesheet" id="lana-pet-icon-css"
	href="/css/lana-pet-icon.min.css?ver=1.0.0" type="text/css" media="all">
<link rel="stylesheet" id="lana-pet-theme-css"
	href="/css/lana-pet-theme.min.css?ver=1.0.0" type="text/css"
	media="all">
<link rel="stylesheet" id="lana-pet-print-css"
	href="/css/lana-pet-print.min.css?ver=1.0.0" type="text/css"
	media="print">

<link rel="stylesheet" href="css/mainPage.css" type="text/css">
<script src="https://kit.fontawesome.com/23b331c6f8.js"
	crossorigin="anonymous"></script>


<style type="text/css">
.siren {
	width: 24px;
}

.btn-primary {
	background: #f8b03a;
	border: #f8b03a;
	color: white;
	height: 40px;
	width: 30%;
	border-radius: 4px;
	font-weight: bold;
}

.write-btn {
	
}

#post-title {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 1em;
	/* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
}

.comment-img {
	margin-top: 5%;
}

.pagination {
	display: flex;
}

#communityImgList {
	width: 210px;
	height: 180px;
}

#communityImgList img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 180px;
}
</style>
</head>

<body class="archive grid-4-columns">

	<%@include file="../include/Header.jsp"%>

	<main class="main container">
		<div class="write-btn">
			<a href="writeDaily" class="btn-primary">글쓰기</a>
		</div>
		<div class="row">
			<div class="col-12">
				<div class="blog-grid-posts">
					<div class="row">

						<c:forEach var="community" items="${paging }">
							<!-- 1번 게시글 -->
							<div class="blog-grid-col col-12 col-md-6 col-lg-3">
								<div id="post-1"
									class="post type-post post-1 card post-card post-grid-card h-100">
									<div id="communityImgList">
										<a href="/community/dailyDetail?communityNum=${community.communityNum }">											
											<%-- <img class="card-img-top img-fluid" src="/img/communityImg/${community.communityImg}" alt="Post"> --%>
											<c:choose>
												<c:when test="${community.communityImg ne null}">
													<img src="/img/communityImg/${community.communityImg}">							
												</c:when>										
												<c:otherwise>
													<c:if test="${community.communityImg eq null }"></c:if>
														<img src="/img/communityImg/no_image.png">
												</c:otherwise>
											</c:choose>
										</a>
									</div>
									<div class="card-body">
										<ul class="post-meta">
											<li><a
												href="/community/dailyDetail?communityNum=${community.communityNum }">쟉성일자 : ${community.communityInsertdate }</a></li>
										</ul>

										<h5 class="post-title card-title" id="post-title">
											<a
												href="/community/dailyDetail?communityNum=${community.communityNum }">제목 : ${community.communityTitle }</a>
										</h5>
										<div class="post-text card-text">
											<p class="post-text card-text">작성자 : ${community.userNickname }</p>
										</div>

									</div>

								</div>
							</div>
						</c:forEach>

					</div>

					<nav class="pagination" role="navigation">

						<c:set var="recordsCnt" value="${count}" />
						<c:set var="jspFile" value="daily?" />
						<c:set var="perpage" value="8" />


						<!-- include 페이징  jsp파일  -->
						<%@include file="../include/paging.jsp"%>
					</nav>
				</div>
			</div>
		</div>
	</main>




	<%@include file="../include/Footer.jsp"%>

	<script type="text/javascript" src="/js/jquery.min.js?ver=3.6.0"></script>
	<script type="text/javascript" src="/js/popper.min.js?ver=1.16.1"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js?ver=4.6.0"></script>
	<script type="text/javascript" src="/js/smartmenus.min.js?ver=1.1.1"></script>
	<script type="text/javascript"
		src="/js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
	<script type="text/javascript" src="/js/swiper.min.js?ver=4.5.3"></script>
	<script type="text/javascript" src="/js/scrollmagic.min.js?ver=2.0.8"></script>
	<script type="text/javascript"
		src="/js/magnific-popup.min.js?ver=1.1.0"></script>
	<script type="text/javascript" src="/js/custom-theme.js?ver=1.0.0"></script>
	<script type="text/javascript">
		$('.infoLink').click(function() {
			$(this).children("form").submit()
		})
		


	</script>

</body>
</html>