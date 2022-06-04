<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너와 함개</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- 템플릿2 -->
<!-- Links of CSS files -->
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



<!-- <link rel="icon" type="image/png" href="/community/images/favicon.png"> -->

<style type="text/css">
#total {
	diplay: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	margin: 60px;
}

#comment-insert-btn {
	background: #f8b03a;
	color: white;
	float: right;
	border: #f8b03a;
}

#siren {
	background: none;
	width: 40px;
	border: none;
	float: right;
}

#etc {
	margin-top: 20px;
}

.write-comment {
	margin-top: 30px;
	float: right;
}

information-content {
	margin-top: 30px;
}

.comment-input {
	border: solid #e6e6e6;
	border-radius: 8px;
	width: 80%;
}

.comment-btn {
	width: 15%;
}
</style>

</head>


<%@include file="../include/Header.jsp"%>

<body>

	<div id="total">
		<form action="updateCommunity" method="post">
			<input name="communityNum" type="hidden"
				value="${community.communityNum }">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-12">
					<div class="pet-details-image">
						<!-- 사용자가 첨부한 이미지 들어오는 자리 -->
						<!-- <img src="../../img/emptyHeart.png"> -->
					</div>
				</div>

				<d\iv class="col-lg-6 col-md-12">
					<div class="products-details-content">
						<div id="userProfile">
							<h3>${community.user.userNickname }</h3>
							<!-- <p class="location">
							<i class="ri-map-pin-line"></i> 4825 Poplar Lane Miami, FL
						</p> -->
							<hr>
						</div>

						<div>
							<div class="communityContent">${community.communityContent }</div>
							<div id="etc">
								<small><span>${community.communityInsertdate }</span></small>
								<button id="siren">
									<img src="../../img/siren.png">
								</button>
							</div>
						</div>
						<hr>

						<!-- 댓글리스트 출력 -->
						<div class="seller-information">
							<div class="information-content">
								<img src="/community/images/user/user-25.jpg"
									class="rounded-circle" alt="image">
								<h6>댓글 작성자 닉네임</h6>
								<p>댓글 내용 출력</p>

							</div>
						</div>
						<br />
					</div>
				</div>
			</div>
		</form>

		<!-- 댓글 입력창 -->
		<!-- 		<div class="">
			<form action="">
				<div class="col-md-6 row write-comment">
					<label>댓글</label>
					<div class="comment-input">
						<input type="text" class="form-control" placeholder="댓글을 입력해주세요">
					</div>
					<div class="comment-btn">
						<button type="submit" class="btn btn-primary"
							id="comment-insert-btn">등록</button>
					</div>
				</div>
			</form>
		</div> -->
		<form class="mt-5">
			<div class="input-group input-group-lg">
				<input type="email"
					class="form-control bg-transparent border-primary text-white text-uppercase"
					placeholder="댓글을 입력해주세요." aria-label="Email" aria-describedby="subscribe">
				<div class="input-group-append">
					<button type="submit" id="subscribe"
						class="btn btn-primary text-uppercase font-weight-bold">
						<span class="d-none d-sm-inline">등록</span> <i
							class="fas fa-paper-plane d-inline d-sm-none"></i>
					</button>
				</div>
			</div>
		</form>
	</div>


	<%@include file="../include/Footer.jsp"%>

</body>



<!-- 템플릿2 -->
<!-- Links of JS files -->
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