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
<script src="https://kit.fontawesome.com/23b331c6f8.js"
	crossorigin="anonymous"></script>

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
	margin-top: 3%;
}

.blockList-paging {
	margin: 3%;
	margin-left: 25%;
	margin-right: 25%;
	align-items: center;
}

.boxbox {
	margin-bottom: 6%;
}

.icon{
	margin-top:3%;
}
</style>

</head>

<%@include file="../include/Header.jsp"%>

<body>

	<div class="content-page-box-area">
		<div class="all-notifications-body">
			<div
				class="all-notifications-header d-flex justify-content-between align-items-center"
				id="title">
				<h3 class="font-weight-bold">친구요청목록</h3>
			</div>

			<!-- 친구차단 리스트 -->
			<c:forEach items="${friendRequestList }" var="vo">
			<div class="boxbox">
				<div class="item d-flex justify-content-between align-items-center">
					<div class="figure">
						<a href="my-profile.html"><img
							src="/${vo.img }" class="rounded-circle"
							alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a href="my-profile.html">${vo.user1.userNickname}</a>
						</h4>


					</div>
					<div class="icon">
						<a class="agree" style="color:#20C997;" userEmail="${vo.user1.userEmail }"><i class="fa-regular fa-circle-check"></i></a> 
						<a class="refuse" userEmail="${vo.user1.userEmail }" > <i class="fa-regular fa-circle-xmark"></i></a>
					</div>
				</div>
			</div>
			
			</c:forEach>
			
			
			

		</div>
		<div class="blockList-paging">
			<nav
				class="navigation pagination justify-content-between bg-transparent text-uppercase"
				role="navigation">
				
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
<script type="text/javascript">
	$('.agree').click(function(){
		
		$.ajax({
			url:'/api/complet',
			data:{userEmail:$(this).attr('userEmail'),
				message:'agree'},
			type:'get',
			success:function(){
				location.reload()
			}
		})
	})
	
	$('.refuse').click(function(){
		
		$.ajax({
			url:'/api/complet',
			data:{userEmail:$(this).attr('userEmail'),
				message:'refuse'},
			type:'get',
			success:function(){
				location.reload()
			}
		})
	})
</script>
</html>