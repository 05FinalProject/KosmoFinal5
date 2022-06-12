<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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

<title>너와 함개</title>

<style type="text/css">
.all-notifications-body {
	margin-top: 5%;
	margin-bottom: 5%;
}

#title {
	margin-bottom: 5%;
}

.text {
	margin-top: 4%;
}

.blockList-paging {
	margin: 3%;
	margin-left: 25%;
	margin-right: 25%;
	align-items: center;
}

.boxbox {
	margin-bottom: 5%;
}
</style>

</head>

<%@include file="../include/Header.jsp"%>



<body>
	<!-- <div class="wrapper">
		Main Sidebar Container
		<aside class="myPage-sidebar asidebar beta">
			<div class="sidebar">
				<div class="user-panel mt-3 pb-3 mb-3 d-flex"></div>
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">

						마이 프로필
						<li class="nav-item"><a href="/myPage/myPageProfile"
							class="nav-link active">
								<p>마이 프로필</p>
						</a></li>

						나의 게시글
						<li class="nav-item"><a href="/myPage/myPageBoard"
							class="nav-link">
								<p>나의 게시글</p>
						</a></li>

						반려동물
						<li class="nav-item"><a href="/myPage/myPageDogList"
							class="nav-link">
								<p>반려동물</p>
						</a></li>

						펫친관리
						<li class="nav-item"><a href="/friend/friendList"
							class="nav-link">
								<p>펫친관리</p>
						</a></li>

						친구찾기
						<li class="nav-item"><a href="/friend/friendFind"
							class="nav-link">
								<p>펫친찾기</p>
						</a></li>

						나의 산책로
						<li class="nav-item"><a href="/walk/myWalk" class="nav-link">
								<p>나의 산책로</p>
						</a></li>

					</ul>
				</nav>
			</div>
		</aside>

	</div>
 -->

	<div class="content-page-box-area">
		<div class="all-notifications-body">
			<div
				class="all-notifications-header d-flex justify-content-between align-items-center"
				id="title">
				<h3 class="font-weight-bold">친구차단목록</h3>
			</div>

			<!-- 친구차단 리스트 -->
			<div class="boxbox">
				<div class="item d-flex justify-content-between align-items-center">
					<div class="figure">
						<a href="my-profile.html"><img
							src="/community/images/user/user-55.jpg" class="rounded-circle"
							alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a href="my-profile.html">닉네임</a>
						</h4>


					</div>
					<div class="icon">
						<a href="#"><i class="flaticon-x-mark"></i></a>
					</div>
				</div>
			</div>
			
				<!-- 친구차단 리스트 -->
			<div class="boxbox">
				<div class="item d-flex justify-content-between align-items-center">
					<div class="figure">
						<a href="my-profile.html"><img
							src="/community/images/user/user-55.jpg" class="rounded-circle"
							alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a href="my-profile.html">닉네임</a>
						</h4>


					</div>
					<div class="icon">
						<a href="#"><i class="flaticon-x-mark"></i></a>
					</div>
				</div>
			</div>
			
			
				<!-- 친구차단 리스트 -->
			<div class="boxbox">
				<div class="item d-flex justify-content-between align-items-center">
					<div class="figure">
						<a href="my-profile.html"><img
							src="/community/images/user/user-55.jpg" class="rounded-circle"
							alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a href="my-profile.html">닉네임</a>
						</h4>


					</div>
					<div class="icon">
						<a href="#"><i class="flaticon-x-mark"></i></a>
					</div>
				</div>
			</div>
			 
				<!-- 친구차단 리스트 -->
			<div class="boxbox">
				<div class="item d-flex justify-content-between align-items-center">
					<div class="figure">
						<a href="my-profile.html"><img
							src="/community/images/user/user-55.jpg" class="rounded-circle"
							alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a href="my-profile.html">닉네임</a>
						</h4>


					</div>
					<div class="icon">
						<a href="#"><i class="flaticon-x-mark"></i></a>
					</div>
				</div>
			</div>
			

		</div>
		<div class="blockList-paging">
			<nav
				class="navigation pagination justify-content-between bg-transparent text-uppercase"
				role="navigation">
				<a class="prev disabled" href="#"> Prev </a>
				<div class="nav-links">
					<ul class="page-numbers">
						<li><span aria-current="page" class="page-numbers current">1</span></li>
						<li><a class="page-numbers" href="#">2</a></li>
						<li><a class="page-numbers" href="#">3</a></li>
						<li><a class="page-numbers" href="#">4</a></li>
						<li><a class="page-numbers" href="#">5</a></li>
						<li><a class="page-numbers" href="#">6</a></li>
						<li><a class="page-numbers" href="#">7</a></li>
						<li><a class="page-numbers" href="#">8</a></li>
					</ul>
				</div>
				<a class="next" href="#"> Next </a>
			</nav>
		</div>

	</div>

</body>

<%@include file="../include/Footer.jsp"%>

<script src="/community/js/jquery.min.js"></script>
<script src="/community/js/bootstrap.bundle.min.js"></script>
<script src="/community/js/jquery.magnific-popup.min.js"></script>
<script src="/community/js/jquery-ui.min.js"></script>
<script src="/community/js/simplebar.min.js"></script>
<script src="/community/js/metismenu.min.js"></script>
<script src="/community/js/owl.carousel.min.js"></script>
<script src="/community/js/wow.min.js"></script>
<script src="/community/js/main.js"></script>
</html>