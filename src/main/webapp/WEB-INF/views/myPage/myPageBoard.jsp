<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Links of CSS files -->
<link rel="stylesheet" href="/myPage/css/bootstrap.min.css">
<link rel="stylesheet" href="/myPage/css/flaticon.css">
<link rel="stylesheet" href="/myPage/css/jquery-ui.min.css">
<link rel="stylesheet" href="/myPage/css/style.css">
<link rel="stylesheet" href="/myPage/css/rtl.css">
<link rel="stylesheet" href="/myPage/css/responsive.css">
<link rel="stylesheet" href="/myPage/css/myPage.css">

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="../../admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../admin/dist/css/adminlte.min.css">
<style>
.account-setting-list-tabs{
    background-color: var(--white-color);
    padding: 35px;
    text-align: center;
    border-radius: 5px;
    margin-top:0;
}    
p{
    line-height: 1.8;
    color: black;
    font-weight: 400;
    font-family: var(--main-font-family);
    font-size: 15px;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.account-setting-list-tabs .nav .nav-item .nav-link:hover, .account-setting-list-tabs .nav .nav-item .nav-link.active {
    color: #DC6721;
}

.favourite-table table thead tr th {
    border: none;
    border-bottom-width: 0px;
    vertical-align: middle;
    padding: 15px 25px;
    white-space: nowrap;
    font-size: 15px;
    color: #DC6721;
    font-weight: 600;
    font-family: var(--heading-font-family);
}

</style>

<title>마이페이지 - 나의 게시글</title>

<link rel="icon" type="image/png" href="assets/images/favicon.png">
</head>

<body class="hold-transition sidebar-mini layout-fixed "
	style="background-color: #f4f6f9;">
	<%@include file="/WEB-INF/views/include/Header.jsp" %>
	<div class="wrapper">
	<aside class="myPage-sidebar asidebar beta">
		<div class="sidebar">
			<div class="user-panel mt-3 pb-3 mb-3 d-flex"></div>
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false" style="color:black;">

					<!-- 마이 프로필 -->
					<li class="nav-item"><a href="/myPage/myPageProfile" class="nav-link">
							<p>마이 프로필</p>
					</a></li>

					<!-- 나의 게시글 -->
					<li class="nav-item"><a href="/myPage/myPageBoard"
						class="nav-link active">
							<p>나의 게시글</p>
					</a></li>

					<!-- 반려동물 -->
					<li class="nav-item"><a href="/myPage/myPageDogList" class="nav-link">
							<p>반려동물</p>
					</a></li>

					<!-- 펫친관리 -->
					<li class="nav-item"><a href="/friend/friendList"
						class="nav-link">
							<p>펫친관리</p>
					</a></li>

					<!-- 친구찾기 -->
					<li class="nav-item"><a href="/friend/friendFind"
						class="nav-link">
							<p>펫친찾기</p>
					</a></li>

					<!-- 나의 산책로 -->
					<li class="nav-item"><a href="/walk/myWalk" class="nav-link">
							<p>나의 산책로</p>
					</a></li>

				</ul>
			</nav>
		</div>
	</aside>


	<div class="content-wrapper myBoard">

		<!-- 탭-->
		<div class="content-page-box-area">
			<div class="account-setting-list-tabs">
				<ul class="nav nav-tabs" id="myTab" role="tablist">

					<li class="nav-item"><a class="nav-link active title" id="wCommunity-tab" 
						data-bs-toggle="tab" href="#wCommunity" role="tab" 
						aria-controls="wCommunity">작성한 글</a></li>

					<li class="nav-item"><a class="nav-link title" id="comment-tab"
						data-bs-toggle="tab" href="#comment" role="tab"
						aria-controls="comment">작성한 댓글</a></li>

					<li class="nav-item"><a class="nav-link title" id="review-tab"
						data-bs-toggle="tab" href="#review" role="tab"
						aria-controls="review">작성한 리뷰</a></li>

					<li class="nav-item"><a class="nav-link title" id="likeIt-tab"
						data-bs-toggle="tab" href="#likeIt" role="tab"
						aria-controls="likeIt">좋아요한 글</a></li>

				</ul>
			</div>


			<div class="tab-content" id="myTabContent">
			
							<!-- 작성한 글 -->
				<div class="tab-pane fade show active" id="wCommunity"role="tabpanel">
					<div>
						<div class="content-page-box-area">
							<div class="row">
							<c:forEach items="${CommunityWrite}" var="w">
								<div class="col-lg-3 col-md-6">
									<div class="single-events-card">
										<img src="/img/communityImg/${w.realImgName }" alt="image">
										<div class="events-content">
											<a href="/community/dailyDetail?communityNum=${w.community.communityNum }"><span>제목 :</span>&nbsp;<span>${w.community.communityTitle }</span></a>
											<h3>
												내용 : ${w.community.communityContent}
											</h3>
											<p>작성일자 : ${w.community.communityInsertdate}</p>
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>	
				</div>
			

				<!-- 작성한 댓글 -->
				<div class="tab-pane fade" id="comment" role="tabpanel">
				<hr style="color:white">
					<div>
						<div class="content-page-box-area">
							<div class="row">
								
								<div class="col-lg-12 col-md-12">
								
									<div class="favourite-table table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>게시물 제목</th>
													<th>게시물 내용</th>
													<th>댓글 내용</th>
													<th>작성일자</th>
												</tr>
											</thead>
										<c:forEach items="${comment}" var="c">
											<tbody>
												<tr>
													<td><a href="/community/dailyDetail?communityNum=${c.community.communityNum }">${c.community.communityTitle }</a></td>												
													<td>${c.community.communityContent }</td>													
													<td>${c.commentContent } </td>
													<td>${c.commentInsertdate }</td>
												</tr>
											</tbody>
										</c:forEach>											
										</table>
									</div>
									
								</div>
								
							</div>
						</div>
					</div>
				</div>
				
			<!-- 작성한 리뷰 -->	
			<div class="tab-pane fade" id="review" role="tabpanel">
				<hr style="color:white">
					<div>
						<div class="content-page-box-area">
							<div class="row">
								
								<div class="col-lg-12 col-md-12">
								
									<div class="favourite-table table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>기관명</th>
													<th>리뷰내용</th>
													<th>작성일자</th>
													<th>기관위치</th>
												</tr>
											</thead>
										<c:forEach items="${review}" var="r">
											<tbody>
												<tr>
													<td><a href="/agency/agencyHotelDetail?agencyNum=${r.agency.agencyNum }">${r.agency.agencyName }</a> </td>
													<td>${r.reviewContent }</td>
													<td>${r.reviewInsertdate }</td>
													<td>${r.agency.agencyAddress }</td>
												</tr>
											</tbody>
										</c:forEach>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 좋아요한 글 -->
			<div class="tab-pane fade" id="likeIt" role="tabpanel">
				<hr style="color:white">
					<div>
						<div class="content-page-box-area">
							<div class="row">
								
								<div class="col-lg-12 col-md-12">
								
									<div class="favourite-table table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>제목</th>
													<th>내용</th>
													<th>작성자</th>
												</tr>
											</thead>
										<c:forEach items="${like}" var="l">
											<tbody>
												<tr>
													<td>${l.communityTitle }</td>
													<td>${l.communityContent }</td>
													<td>${l.user.userNickname }</td>
												</tr>
											</tbody>
										</c:forEach>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	</div>
	<!-- End Main Content Wrapper Area -->
	<%@include file="/WEB-INF/views/include/Footer.jsp" %>

	<!-- Links of JS files -->
	<!-- jQuery -->
	<script src="../../admin/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="../../admin/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="/myPage/js/jquery.min.js"></script>
	<script src="/myPage/js/bootstrap.bundle.min.js"></script>
	<script src="/myPage/js/jquery-ui.min.js"></script>

	<!-- Bootstrap 4 -->
	<script src="../../admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../admin/dist/js/adminlte.min.js"></script>
</body>
</html>