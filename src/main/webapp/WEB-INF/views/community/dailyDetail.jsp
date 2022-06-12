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
<link rel="stylesheet" href="/css/choi.css">
<link rel="stylesheet" href="/community/css/responsive.css">
<link rel="stylesheet" href="/css/jquery.bxslider.css">
<script src="https://kit.fontawesome.com/23b331c6f8.js"
	crossorigin="anonymous"></script>


<!-- <link rel="icon" type="image/png" href="/community/images/favicon.png"> -->


<style type="text/css">
#total {
	diplay: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	margin: 60px;
	/*  height:100vh; */
}

#comment-insert-btn {
	background: #f8b03a;
	color: white;
	float: right;
	border: #f8b03a;
}

.siren {
	width: 40px;
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

.friend-plus {
	dispaly: flex;
	flex-direction: row;
	justify-content: left;
}

#userProfile {
	display: flex;
	padding-left: 0px;
}

#fa-user-plus {
	margin-left: 2%;
}

#fa-user-check {
	margin-left: 2%;
}

.item #item1 {
	float: right;
}

#btnbtn {
	display: flex;
}

#time{
	margin-right: 30%;
}
#communityTitle {
	margin-right: 60%;
}

.seller-information {
	display: none;
}

#etc {
	margin-top: 20px;
}

.siren {
	width: 40px;
}

#siren {
	background: none;
	width: 40px;
	border: none;
	float: right;
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

.friend-plus {
	dispaly: flex;
	flex-direction: row;
	justify-content: left;
}

#userProfile {
	display: flex;
}

#fa-user-plus {
	margin-left: 2%;
}

#fa-user-check {
	margin-left: 2%;
}

.modal {
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: 1000;
	background: rgba(0, 0, 0, 0.5);
	top: 0;
	left: 0;
	display: none;
}

.modal_content {
	width: 28%;
	background: #fff;
	border-radius: 20px;
	position: fixed;
	top: 50%;
	left: 50%;
	text-align: center;
	box-sizing: border-box;
	padding: 74px 0;
	line-height: 30px;
	display: flex;
	position: absolute;
	transform: translate(-50%, -50%);
}

.btn-danger {
	background-color: white;
}

ul {
	list-style: none;
	padding-left: 0px;
}

.form-control {
	border: solid 1px !important;
	border-color: #ff8a00 !important;
	text-align: center;
}

.friend-plus {
	dispaly: flex;
	flex-direction: row;
	justify-content: left;
}

#userProfile {
	display: flex;
	padding-left: 0px;
}

#fa-user-plus {
	margin-left: 2%;
}

#fa-user-check {
	margin-left: 2%;
}

.item #item1 {
	float: right;
}

#btnbtn {
	display: flex;
}

#communityTitle {
	margin-right: 60%;
}

#end {
	display: none;
}

#wrap {
	width: 450px;
	margin: 0 auto;
}

.bx-viewport {
	height: 100%;
}

#bx-pager {
	width: 150px;
	dispaly: flex;
}

#imgcover {
	width: 530px;
	height: 530px;
}

#imgcover img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
/* .comment-img {
	display:flex;
	
} */
body {
	height: 100%
}

#boxbox {
	min-height: 60%;
	position: relative;
	padding-bottom: 60px;
}

footer {
	position: relative;
	transform: translatY(-100%);
}

</style>

</head>


<%@include file="../include/Header.jsp"%>

<body>
	<div class="col-md-12" id="boxbox">
		<div id="total">
			<form method="post">
				<input name="communityNum" type="hidden" value="1">
				<div class="row justify-content-center" style="float: left;">
					<div class="col-lg-6 col-md-12">
						<div class="pet-details-image">
							<div id="wrap">
								<ul class="slider">
									<%-- <li><a href="#"><img
											src="/img/communityImg/${img.realImgName}"></a></li> --%>
									<c:forEach items="${community}" var="img">
										<c:choose>
											<c:when test="${img.realImgName ne null}">
												<li><a href="#"><img
														src="/img/communityImg/${img.realImgName}"></a></li>
											</c:when>
											<c:otherwise>
											<c:if test="${img.realImgName eq null }"></c:if>
												<li><img src="/img/communityImg/no_image.png"></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</ul>
							</div>
							<div id="bx-pager">
								<c:set var="img" value="${imgList }"></c:set>
								<c:forEach items="${imgList }" var="community.img">
									<a data-slide-index="0" href=""><img
										src="/img/communityImg/${community.img.realImgName}" /></a>
								</c:forEach>

							</div>
						</div>
						<!-- *************************************** 이미지 슬라이더 끝 ********************************************** -->
					</div>
				</div>

				<div class="col-lg-6" style="float: right;">
					<div class="products-details-content" >
						<div id="userProfile" class="container">
							<div class="item" id="communityTitle">
								<input type="hidden" name="communityNum" class="likelike"
									value="${community[0].community.communityNum}">
								<h3 class="beforeUpdate">${community[0].community.communityTitle}</h3>
								<input type="text" class="updateInput" name="communityTitle"
									value="${community[0].community.communityTitle}" />
							</div>
							<div class="item">
								<h3>작성자 : ${community[0].community.user.userNickname}</h3>
							</div>
							<div class="item" id="fa-user-plus">
								<a><i class="fa-solid fa-user-plus"></i></a>
							</div>
							<div class="item" id="fa-user-check">
								<a><i class="fa-solid fa-user-check"></i></a>
							</div>

						</div>
						<hr>

						<div>
							<div class="communityContent beforeUpdate">${community[0].community.communityContent}</div>
							<input type="text" class="updateInput" name="communityContent"
								value="${community[0].community.communityContent}" />
							<div id="etc">
								<div class="container" id="btnbtn">
									<span id="time">${community[0].community.communityInsertdate}</span> <input
										type="hidden" class="likeBtn"
										value="${sessionScope.userEmail }">
									<div class="comment-img">
										<c:if test="${not empty sessionScope.userEmail }">
											<c:choose>
												<c:when test="${likeState eq 0 }">
													<span class="item"><a type="button"
														class="heart-click"><i class="fa-regular fa-heart"
															style="color: red;"></i></a></span>
												</c:when>
												<c:otherwise>
													<span class="item"><a type="button"
														class="heart-click"><i
															class="heart-click fa-solid fa-heart" style="color: red;"></i></a></span>
												</c:otherwise>
											</c:choose>
										</c:if>
										<span class="item"><i
											class="fa-regular fa-comment-dots"></i></span>
									</div>
									<button class="item" id="siren">
										<img class="siren" src="../../img/siren.png">
										<!-- <i class="siren" class="fa-solid fa-light-emergency-on"></i> -->
									</button>
									<c:if
										test="${community[0].community.user.userNickname eq sessionScope.userNickname}">
										<!-- 	<span><img class="emptyHeart"
										src="../../img/emptyHeart.png"></span> -->

										<div class="item" id="item1">
											<input class="beforeUpdate updateBtn beforeUpdateBtn"
												type="submit" value="수정" /> <input
												class="updateInput updateBtn afterUpdateBtn" type="submit"
												value="수정" />
										</div>
										<div class="item" id="item2">
											<a><input type="button" id="deleteBtn" value="삭제" /></a>
										</div>
									</c:if>
								</div>
							</div>
						</div>

						<hr>

						<!-- 댓글리스트 출력 -->
						<c:forEach items="${commentList}" var="comment">
							<div class="seller-information">
								<div class="information-content">
									<img src="/community/images/user/user-25.jpg"
										class="rounded-circle" alt="image">
									<h6>${comment.user.userNickname}</h6>
									<p>${comment.commentContent}</p>

								</div>
								<br />
							</div>
						</c:forEach>
						<div class="load-more-posts-btn">
							<a href="#"><i class="flaticon-loading" id="load">댓글 더 보기</i></a>
						</div>
						<div class="text-center" id="end">마지막 댓글입니다.</div>
					</div>
				</div>
			</form>
		</div>

		<!-- 댓글 입력창 -->
	</div>
		<div class="col-md-6 ms-auto pb-5">
			<form class="mt-5" action="/community/writeCommunitycomment" method="post">				
				<div class="input-group input-group-lg">
					<input type="hidden" name="userEmail"
						value="${sessionScope.userEmail}" /> <input type="hidden"
						name="communityNum" value="1"> <input type="text"
						name="commentContent"
						class="form-control bg-transparent border-primary text-uppercase"
						placeholder="댓글을 입력해주세요.">
					<div class="input-group-append">
						<button type="submit" id="subscribe"
							class="btn btn-primary text-uppercase font-weight-bold">등록
						</button>
					</div>
				</div>
			</form>
		</div>

	<!-- 모달 신고창 띄우기 ************************************************* -->
	<div class="modal">
		<div class="modal_content" title="클릭하면 창이 닫힙니다."
			style="padding-top: 20px; padding-bottom: 20px;">

			<div class="col-12 mt-4 mt-lg-0">
				<button type="button" class="close">
					<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
				</button>
				<h4>게시글 신고하기</h4>
				<div class="widget-sidebar pet-sidebar">
					<div class="padding-6">
						<div class="gen-after-report">
							<div class="gen-extra-report">
								<ul>
									<li>
										<div style="float: left">작성자 :
											${community[0].community.user.userEmail }</div>
									</li>
									<br>
									<li>
										<div style="float: left; height: 150px;">내용 :
											${community[0].community.communityContent}</div>
									</li>
								</ul>
							</div>
						</div>
					</div>

					<div id="water">
						<form action="/community/reportCommunity" method="post">
							<input type="hidden" name="communityNum" value="1"> <input
								type="hidden" name="userEmail"
								value="${community[0].community.user.userEmail}">
							<div class="form-group">
								<select name="rReason" class="form-control">
									<option value="0">신고 사유 선택</option>
									<option value="게시글 도배">게시글 도배</option>
									<option value="욕설/비방">욕설/비방</option>
									<option value="음란성">음란성</option>
									<option value="광고/홍보성">광고/홍보성</option>
									<option value="개인정보 유출">개인정보 유출</option>
									<option value="저작권 불법 도용">저작권 불법 도용</option>
									<option value="기타">기타</option>
								</select>
							</div>
							<button type="submit" id="btnReport"
								class="btn btn-primary btn-block font-weight-bold text-uppercase">
								신고하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 끝 -->

	<%@include file="../include/Footer.jsp"%>
</body>
<script type="text/javascript">
	$("#siren").click(function(e) {
		$(".modal").fadeIn();
		e.preventDefault()
	});

	$(".close").click(function() {
		$(".modal").fadeOut();
	});
</script>


<!-- 템플릿2 -->
<!-- Links of JS files -->
<script src="/community/js/jquery.min.js"></script>
<script src="/community/js/bootstrap.bundle.min.js"></script>
<script src="/community/js/jquery.magnific-popup.min.js"></script>
<script src="/community/js/jquery-ui.min.js"></script>
<script src="/community/js/simplebar.min.js"></script>
<script src="/community/js/metismenu.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/community/js/wow.min.js"></script>
<script src="/community/js/main.js"></script>
<!-- <script src="/js/choi.js"></script> -->
<!-- jQuery library (served from Google) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="/js/jquery.bxslider.js"></script>



<script type="text/javascript">
	$(function() {
		$(".slider").bxSlider({
			auto : true,
			adaptiveHeight : true,
		/* pagerCustom : '#bx-pager' */
		});

	});

	$(function() {

		$('.updateInput').hide();
		$('.beforeUpdateBtn').click(function(e) {
			e.preventDefault();
			$('.updateInput').show();
			$('.beforeUpdate').hide();
		});

		$('.afterUpdateBtn')
				.click(
						
						function(e) {
							e.preventDefault();
							input_title = $('input[name="communityTitle"]').val();
							input_content = $('input[name="communityContent"]')
									.val();
							input_communityNum = $('input[name="communityNum"]')
									.val();
							$
									.ajax({
										url : '/community/communityUpdate', // url로 변경 ( 홈페이지 주소로 뒤에는 RequestMapping의 값을)
										type : 'post',
										contentType : 'application/x-www-form-urlencoded;charset=utf-8',
										data : {
											communityTitle : input_title,
											communityContent : input_content,
											communityNum : input_communityNum
										},
										success : function(data) {
											if (data == 'yes') {
												alert('수정되었습니다'); // hide,show 적어주면됨
												$('.beforeUpdate').html(
														input_title); // html(값)  => 불러오는 것 , 값을 넣으면 setter 
												$('.communityContent').html(
														input_content);
												$('.updateInput').hide();
												$('.beforeUpdate').show();
											} else {
												alert('수정에 실패하였습니다.');
											}

										},
										error : function(err) {
											alert('수정되지 않았습니다.');
											console.log(err);
										}

									});
						});

		$('#deleteBtn')
				.on(
						'click',
						function() {
							var communityNum = "${community[0].community.communityNum }"
							if (confirm("삭제하시겠습니까?")) {
								location.href = "/community/deleteCommunity?communityNum="
										+ communityNum
							} else {
								alert("이전 페이지로 돌아갑니다.");
								location.href = "/community/daily"
							}
						});

		/* ************************************** 댓글 리스트 **************************************** */
		plusReview();
		function plusReview() {
			$(".seller-information").slice(0, 4).show(); // select the first ten
			if ($(".seller-information").length > 4) {
				$("#load").click(function(e) { // click event for load more
					e.preventDefault();
					$(".seller-information:hidden").slice(0, 4).show(); // select next 10 hidden divs and show them
					if ($(".seller-information:hidden").length == 0) { // check if any hidden divs still exist
						$("#load").css('display', 'none');
						$("#end").show();
					}
				});
			} else {
				$("#load").css('display', 'none');
			}

		}

		$(function() {
			$('#btnReport').click(function() {
				if (confirm('신고하시겠습니까?')) {
					alert("신고완료");
				} else {
					return;
				}

			});

		})

		/* **************************************** 좋아요 버튼 ************************************ */
		$('.heart-click')
				.click(
						function() {
							alert($('.likelike').val())
							const likelike = $('.likelike').val()
							const userEmail = $('.likeBtn').val()

							$
									.ajax({
										url : '/community/fullHeart',
										type : 'post',
										data : {
											communityNum : likelike,
											userEmail : userEmail
										},
										success : function(data) {
											alert("왔다")
											let likedata = "";
											$('.heart-click').empty(); //해당 클래스를 비움
											if (data == 0) {
												likedata = '<i class="fa-regular fa-heart" style="color: red;"></i>';
											} else {
												likedata = '<i class="fa-solid fa-heart" style="color: red;"></i>';
											}
											$('.heart-click').append(likedata); //자식으로 다시 붙임
										},
										error : function(err) {
											alert('좋아요 에러');
											console.log(err);
										}
									});
						});

	});
</script>

</html>