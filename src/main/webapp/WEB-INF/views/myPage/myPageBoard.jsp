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

					<li class="nav-item"><a class="nav-link title" id="walkMap-tab" 
						data-bs-toggle="tab" href="#walkMap" role="tab"
						aria-controls="walkMap">즐겨찾는 산책로</a></li>

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
										<a href="#"> <img src="w" alt="image"></a>
										<div class="events-content">
											<span>${w.communityTitle }</span>
											<h3>
												<a href="#">${w.communityContent}</a>
											</h3>
											<p>${w.communityInsertdate}</p>
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
													<td><a href="#">${c.community.communityTitle }</a></td>												
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
													<td><a href="#">${r.agency.agencyName }</a> </td>
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
				<c:forEach items="${like}" var="l">
					<div>
						<div class="content-page-box-area">
							<div class="row">
								<div class="col-lg-2 col-md-6">
									<div class="single-events-card">
										<a href="#"> <img src="assets/images/events/events-1.jpg"
											alt="image">
										</a>
										<div class="events-content">
										<span>${l.communityTitle}</span>
											<h3>
												<a href="#">${l.communityContent }</a>
											</h3>
											<p>${l.user.userNickname} </p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>


				<!-- 즐겨찾는 산책로 -->
				<div class="tab-pane fade" id="walkMap" role="tabpanel">
					<form class="account-setting-form">

						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>First Name</label> <input type="text"
										class="form-control" placeholder="First name">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Last Name</label> <input type="text"
										class="form-control" placeholder="Last name">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Email</label> <input type="email" class="form-control"
										placeholder="Email">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Backup Email</label> <input type="email"
										class="form-control" placeholder="Backup email">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Date of Birth</label> <input type="text"
										class="form-control" placeholder="Date of birth"
										id="datepicker">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Phone No:</label> <input type="number"
										class="form-control" placeholder="Phone no">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Occupation</label> <select class="form-select">
										<option selected="1">Occupation</option>
										<option value="2">Software Developer</option>
										<option value="3">Biomedical Engineer</option>
										<option value="4">Civil Engineer</option>
										<option value="5">General Practitioner</option>
										<option value="6">Structural Engineer</option>
										<option value="7">Pharmacy Technician</option>
										<option value="8">Mechanical Engineer</option>
										<option value="9">Petroleum Engineer</option>
										<option value="10">Technician</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Gender</label> <select class="form-select">
										<option selected="1">Gender</option>
										<option value="2">Male</option>
										<option value="3">Female</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Relation Status</label> <select class="form-select">
										<option selected="1">Relation Status</option>
										<option value="2">Married</option>
										<option value="3">Unmarried</option>
										<option value="4">Single</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Blood Group</label> <select class="form-select">
										<option selected="1">Blood Group</option>
										<option value="2">A+</option>
										<option value="3">A-</option>
										<option value="4">B+</option>
										<option value="5">B-</option>
										<option value="6">O+</option>
										<option value="7">O-</option>
										<option value="8">AB+</option>
										<option value="9">AB-</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Website</label> <input type="text" class="form-control"
										placeholder="Website">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Language</label> <select class="form-select">
										<option selected="1">Language</option>
										<option value="2">English</option>
										<option value="3">Portuguese</option>
										<option value="4">Japanese</option>
										<option value="5">Russian</option>
										<option value="6">Javanese</option>
										<option value="7">Gujarati</option>
										<option value="8">Yoruba</option>
										<option value="9">Polish</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Address</label> <input type="text" class="form-control"
										placeholder="Address">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>City</label> <select class="form-select">
										<option selected="1">City</option>
										<option value="2">Canada</option>
										<option value="3">Germany</option>
										<option value="4">Switzerland</option>
										<option value="5">Australia</option>
										<option value="6">United States</option>
										<option value="7">New Zealand</option>
										<option value="8">United Kingdom</option>
										<option value="9">Netherlands</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>State</label> <select class="form-select">
										<option selected="1">State</option>
										<option value="2">Canada</option>
										<option value="3">Germany</option>
										<option value="4">Switzerland</option>
										<option value="5">Australia</option>
										<option value="6">United States</option>
										<option value="7">New Zealand</option>
										<option value="8">United Kingdom</option>
										<option value="9">Netherlands</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>Country</label> <select class="form-select">
										<option selected="1">Country</option>
										<option value="2">Canada</option>
										<option value="3">Germany</option>
										<option value="4">Switzerland</option>
										<option value="5">Australia</option>
										<option value="6">United States</option>
										<option value="7">New Zealand</option>
										<option value="8">United Kingdom</option>
										<option value="9">Netherlands</option>
									</select>
								</div>
							</div>
							<div class="col-lg-12 col-md-12">
								<button type="submit" class="default-btn">Save</button>
							</div>
						</div>
					</form>
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