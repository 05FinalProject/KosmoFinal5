<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>너와 함개</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body class="home page page-template-template-lana-editor">

<footer class="footer bg-dark text-white">
    <div class="container-fluid">
			<div class="row">
				<div class="col-md-2">
					<ul class="nav">
						<img href="#" src="/img/WithYouTitle.png" class="footerLogo" style="width:190px; height:50px;">
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="nav justify-content-center">
						<li class="nav-item footerFont"><p class="nav-link"
								style="color: white;">주소 : 서울특별시 금천구 가산디지털2로 123 2차) 월드 메르디앙</p></li>
					</ul>
				</div>
				<div class="col-md-3">
					<ul class="nav justify-content-center">
						<li class="nav-item footerFont"><p class="nav-link"
								style="color: white;">고객센터: 02-2005-8523</p></li>
					</ul>
				</div>
				
				<div class="col-md-3">
					<ul class="nav justify-content-center">
					
					<c:choose>
					<c:when test="${sessionScope.userAdmin == 'Y'}">
						<li class="nav-item footerFont"><p class="nav-link" style="color: white;" ><a href="/admin">관리자 페이지</a></p></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item footerFont"><p class="nav-link" style="color: white;">이메일: swkosmo@daum.net</p></li>
					</c:otherwise>
					</c:choose>
					</ul>
				</div>
			</div>
    </div>
</footer>



</body>
</html>