<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Chat</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		<link rel="stylesheet" href="/css/chating/chatingFriend.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
		<script src="https://kit.fontawesome.com/23b331c6f8.js" crossorigin="anonymous"></script>
		 
		
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
	</head>
	
	<body>
		<input type="hidden" id="friendList" value="${userList}" />
		<input type="hidden" id="userEmail" value="${sessionScope.userEmail}">
		<input type="hidden" id="userNickname" value="${user.userNickname}">
		<input type="hidden" id="userImg" value="/${userImg}">
		<input type="hidden" id="friendImg" value="/${userList[0].img}">
		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="friendEmail" value="${userList[0].email}">
		<div class="container-fluid h-100">
			<div class="row justify-content-center h-100">
				<div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
					<div class="card-header">
						<div class="input-group">
							<input type="text" placeholder="Search..." id="search" class="form-control search">
							<div  class="input-group-prepend" >
								<span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
							</div>
						</div>
					</div>
					<input type="hidden" value="${userList[0].friendNo}" id="friendNo" />
					<div class="card-body contacts_body">
						<ui class="contacts">
						
						<c:forEach items="${userList}" var="vo">
						<li class="friend" content="${vo.friendNo}" email="${vo.email}" >
							
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<img src="/${vo.img}" class="rounded-circle user_img">
									
								</div>
								<div class="user_info">
									<span >${vo.nickName}</span>
									
								</div>
							</div>
						</li>
						</c:forEach>
						
						</ui>
					</div>
					<div class="card-footer"></div>
				</div></div>
				<div class="col-md-8 col-xl-6 chat">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								<div class="img_cont" id="friendTitle">
									<img id="friendImage" src="/${userList[0].img}" class="rounded-circle user_img">
									
								</div>
								<div class="user_info">
									<span id="friendName">${userList[0].nickName}</span>
									<p></p>
								</div>
								
							</div>
							<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
							<div class="action_menu">
								<ul>
									<li id="blackList"><i class="fas fa-ban"></i> 친구차단</li>
									<li id="goOut"><i class="fa-solid fa-right-from-bracket"></i> 나가기</li>
								</ul>
							</div>
						</div>
						<div class="card-body msg_card_body">
						
						</div>
						<div class="card-footer">
							<div class="input-group">
								<div class="input-group-append">
									<span class="input-group-text attach_btn"></span>
								</div>
								<input id="chatting" class="form-control type_msg" placeholder="Type your message..." />
								<div class="input-group-append">
									<span onclick="send()" class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="/js/chating/friendChat.js"></script>
				
		
	</body>
</html>
