<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/community/css/bootstrap.min.css">
<link rel="stylesheet" href="/community/css/animate.min.css">
<link rel="stylesheet" href="/community/css/remixicon.css">
<link rel="stylesheet" href="/community/css/flaticon.css">
<link rel="stylesheet" href="/community/css/jquery-ui.min.css">
<link rel="stylesheet" href="/community/css/magnific-popup.min.css">
<link rel="stylesheet" href="/community/css/simplebar.min.css">
<link rel="stylesheet" href="/community/css/metismenu.min.css">
<link rel="stylesheet" href="/community/css/owl.carousel.min.css">
<link rel="stylesheet" href="/community/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/community/css/style.css">
<link rel="stylesheet" href="/community/css/responsive.css">
<link rel="stylesheet" href="/myPage/css/myPage.css">
<script src="https://kit.fontawesome.com/23b331c6f8.js"
	crossorigin="anonymous"></script>

<title>너와 함개</title>

<style type="text/css">
.row {
	margin-bottom: 2%;
}

.story-grid-col {
	padding-top: 2%;
	padding-bottom: 2%;
	height: 50%;
}

.card-body2 {
	flex: 1 1 auto;
	min-height: 1px;
	padding-top: 3rem;
	padding-bottom: 3rem;
	padding-left: 1.5rem;
}

.btn-group {
	background: #20C997;
	border-radius: 8px;
}

.myPage-sideBar {
    float: none;
    left: 0;
    position: absolute;
    height: 100%;
}

.sidebar{
	margin-top:20%;
	margin-left:5%;
}

p{
	display:inline;
	font-size:17px;
	margin:0;
	white-space:noraml;
	line-height: 1.8;
	font-weight: 400;
	color: black;
}

.footer{
    background: #fff;
    border-top: 1px solid #4c4c4c;
    padding-top: 2rem;
    padding-bottom: 2rem;
    position: relative;
    margin-top: 10%;
}

}
</style>

</head>

<%@include file="../include/Header.jsp"%>

<body class="hold-transition sidebar-mini layout-fixed">

<div class="wrapper">
  <aside class="myPage-sideBar asidebar beta">
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- 마이 프로필 -->
          <li class="nav-item">
            <a href="/myPage/myPageProfile" class="nav-link">
              <p>
                마이 프로필
              </p>
            </a>
          </li>
          <!-- 나의 게시글 -->
          <li class="nav-item">
            <a href="/myPage/myPageBoard" class="nav-link">
              <p>
                나의 게시글
              </p>
            </a>
          </li>
          <!-- 반려동물 -->
          <li class="nav-item">
            <a href="/myPage/myPageDogList" class="nav-link">
              <p>
                반려동물
              </p>
            </a>
          </li>
          <!-- 펫친관리 -->
          <li class="nav-item">
            <a href="/friend/friendList" class="nav-link">
              <p>
                펫친관리
              </p>
            </a>
          </li>
          <!-- 친구찾기 -->
          <li class="nav-item">
            <a href="/friend/friendFind" class="nav-link active">
              <p>
                펫친찾기
              </p>
            </a>
          </li>
       
          <!-- 나의 산책로 -->
          <li class="nav-item">
            <a href="/walk/myWalk" class="nav-link">
              <p>
                나의 산책로
              </p>
            </a>
          </li>
          
        </ul>
      </nav>
    </div>
  </aside>
	<div class="content-wrapper">
		<div class="container">
			<div class="col-12">
				<div class="story-grid-posts">
					<div class="row" id="list">
					<c:choose>
						<c:when test="${param.page == null }">
							<c:set var="page" value="1"></c:set>
						</c:when>
						<c:when test="${param.page != null }">
							<c:set var="page" value="${param.page }"></c:set>
						</c:when>
					</c:choose>
						<!-- 각각의 박스 -->
						<%-- <c:forEach var="friendFind" items="${sessionScope.userRandom }"> --%>
						<c:choose>
						<c:when test="${page*9-1>count-1}">
							<c:forEach var="i" begin="${page*9-9 }" end="${count-1}">
							<div class="story-grid-col col-12 col-md-6 col-lg-4" >
							<a id="post-1"
								class="lana_story type-lana_story post-1 card story-card story-grid-card h-100"
								href="single-lana_story.html">
								<div class="card-body2">
									<div class="media">
										<img src="../../pictures/placeholder/100x100.svg"
											class="img-fluid rounded-circle" alt="Pet">
										<div class="media-body align-self-center">
											<h5 class="post-title card-title">${sessionScope.userRandom[i].userNickname }</h5>
											<h6 class="card-subtitle">강아지 이름</h6>
										</div>
									</div>
									<div class="btn-group" content="${sessionScope.userRandom[i].userEmail }">
										<button class="btn btn-sm bg-teal">
											<i class="fa-solid fa-plus" style="color: white"></i>
										</button>
									</div>
									<div class="btn-group">
										<button class="btn btn-sm btn-primary">
											<i class="fa-solid fa-ban" style="color: white"></i>
										</button>
									</div>
								</div>
							</a>
						</div>
						</c:forEach>
						</c:when>
						<c:when test="${page*9-1<=count }">
							<c:forEach var="i" begin="${page*9-9 }" end="${page*9-1 }">
							<div class="story-grid-col col-12 col-md-6 col-lg-4">
							<a id="post-1"
								class="lana_story type-lana_story post-1 card story-card story-grid-card h-100"
								href="single-lana_story.html">
								<div class="card-body2">
									<div class="media">
										<img src="../../pictures/placeholder/100x100.svg"
											class="img-fluid rounded-circle" alt="Pet">
										<div class="media-body align-self-center">
											<h5 class="post-title card-title">${sessionScope.userRandom[i].userNickname }</h5>
											<h6 class="card-subtitle">강아지 이름</h6>
										</div>
									</div>
									<div class="btn-group" content="${sessionScope.userRandom[i].userEmail }">
										<button class="btn btn-sm bg-teal">
											<i class="fa-solid fa-plus" style="color: white"></i>
										</button>
									</div>
									<div class="btn-group">
										<button class="btn btn-sm btn-primary">
											<i class="fa-solid fa-ban" style="color: white"></i>
										</button>
									</div>
								</div>
							</a>
						</div>
						</c:forEach>
						</c:when>
						</c:choose>
						<!-- 박스 끝 -->
						<c:if test="${count>9 }">
						<nav class="pagination" role="navigation">

							<div class="nav-links">
								<c:set var="recordsCnt" value="${count}" />
								<c:set var="jspFile" value="friendFind?" />
								<c:set var="perpage" value="9" />
							</div>
							<!-- include 페이징  jsp파일  -->
							<%@include file="../include/paging.jsp"%>
						</nav>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<script type="text/javascript" src="../js/jquery.min.js?ver=3.6.0"></script>
	<script type="text/javascript" src="../js/popper.min.js?ver=1.16.1"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js?ver=4.6.0"></script>
	<script type="text/javascript" src="../js/smartmenus.min.js?ver=1.1.1"></script>
	<script type="text/javascript"
		src="../js/smartmenus-bootstrap.min.js?ver=1.1.1"></script>
	<script type="text/javascript" src="../js/swiper.min.js?ver=4.5.3"></script>
	<script type="text/javascript" src="../js/scrollmagic.min.js?ver=2.0.8"></script>
	<script type="text/javascript"
		src="../js/magnific-popup.min.js?ver=1.1.0"></script>
	<script type="text/javascript" src="../js/custom-theme.js?ver=1.0.0"></script>
	<script type="text/javascript">
	$('.btn-group').click(function(e){
		e.preventDefault()
		$.ajax({
			url:'/api/friendRequest',
			data:{userEmail:$(this).attr('content')},
			type:'get',
			success:function(){
				alert('요창을 발송하였습니다.')
				location.reload()
			}
		})
	})
	</script>
	<%@include file="../include/Footer.jsp"%>
</body>


</html>