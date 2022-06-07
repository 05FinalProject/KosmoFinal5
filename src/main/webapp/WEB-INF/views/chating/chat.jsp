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
		<script src="https://kit.fontawesome.com/23b331c6f8.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
		
<!-- 		<link href="/css/chating/chating.css" rel="stylesheet"> -->
		<script type="text/javascript">
		window.onload = function(){
			
			chatName()
			
		}

		var ws;
		var numbers = Number($("#members").val());

		function wsOpen(){
			//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
			ws = new WebSocket("ws://" + location.host + "/chating/"+$("#roomNumber").val());
			wsEvt();
		}
			
		function wsEvt() {
			
			ws.onopen = function(data){
				//소켓이 열리면 동작
			}
			
			ws.onmessage = function(data) {
				//메시지를 받으면 동작
				var msg = data.data;
				console.log(msg)
				if(msg != null && msg.type != ''){
					//파일 업로드가 아닌 경우 메시지를 뿌려준다.
					var d = JSON.parse(msg);
					var today = new Date()
					var noon='AM'
					if(today.getHours() > 11){
						noon = 'PM'
					}
					
					if(d.type == "getId"){
						sendCome()
						var si = d.sessionId != null ? d.sessionId : "";
						if(si != ''){
							$("#sessionId").val(si); 
						}
					}else if(d.type == "message"){
						console.log(d)
						
						$.ajax({
							url:'/api/membersImg',
							type:'get',
							contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data:{userEmail:d.userName},
							 contentType: "application/json; charset=utf-8;",
							 dataType: "json",
							success:function(data){
								if(d.sessionId == $("#sessionId").val()){		//내 메시지
									$(".msg_card_body").append('<div class="d-flex justify-content-end mb-4">'+
											'<div class="msg_cotainer_send">'+
											d.msg+
											'<span class="msg_time_send">'+ today.getHours()+':'+ today.getMinutes()+' '+noon+' , Today' +'</span>'+
											'</div>'+
										'<div class="img_cont_msg">'+
									'<img src="/'+data.img+'" class="rounded-circle user_img_msg">'+
										'</div>'+
									'</div>');
									$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight'));
								}else{										//따른분의 메시지
									$(".msg_card_body").append('<div class="d-flex justify-content-start mb-4">'+
										'<div class="img_cont_msg">'+
											'<img src="/'+data.img+'" class="rounded-circle user_img_msg">'+
										'</div>'+
										'<div class="msg_cotainer">'+
										 d.msg + 
											'<span class="msg_time">'+ today.getHours()+':'+ today.getMinutes()+' '+noon+' , Today' +'</span>'+
										'</div>'+
									'</div>');	
									$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight'));
								}
							}
						})
	
							
					}else if(d.type == "come"){
						$(".msg_card_body").append("<p class='comego dateSign'>" + d.msg + "</p>");
						$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight'));
						
						$.ajax({
							url:'/api/membersImg',
							type:'get',
							contentType: "application/x-www-form-urlencoded; charset=UTF-8",

							data:{userEmail:d.userName},
							 contentType: "application/json; charset=utf-8;",
							 dataType: "json",

							success:function(data){
								
								var niName = data.niName;
								if($("#userName").val() == d.userName){
									niName += '(나)'
								}
								
								$('.contacts').append('<li class="friend" email="'+ d.userName +'" >'+
										'<div class="d-flex bd-highlight">'+
										'<div class="img_cont">'+
											'<img src="/'+ data.img +'" class="rounded-circle user_img">'+
											
										'</div>'+
										'<div class="user_info">'+
											'<span >'+niName+'</span>'+
										
										'</div>'+
									'</div>'+
								'</li>')
							}
						})
						
						$('#getRoomNum').text(parseInt($('#getRoomNum').text())+1)
					}else if(d.type == "goout"){
						$(".msg_card_body").append("<p class='comego dateSign'>" + d.msg + "</p>");	
						$('.msg_card_body').scrollTop($('#chating').prop('scrollHeight'));

						$('#getRoomNum').text(parseInt($('#getRoomNum').text())-1)
						
						$('li[email="'+ d.userName +'"]').remove()
						
					}else{
						console.warn("unknown type!")
					}
				}else{
					//파일 업로드한 경우 업로드한 파일을 채팅방에 뿌려준다.
					var url = URL.createObjectURL(new Blob([msg]));
					$(".msg_card_body").append("<div class='img'><img class='msgImg' src="+url+"></div><div class='clearBoth'></div>");
				}
			}

			document.addEventListener("keypress", function(e){
				if(e.keyCode == 13){ //enter press
					send();
				}
			});
		}

		function chatName(){
			var userName = $("#userName").val();
			
			wsOpen();
			
		}

		function goout(){
			var option ={
					type: "goout",
					roomNumber: $("#roomNumber").val(),
					sessionId : $("#sessionId").val(),
					userName : $("#userName").val(),
					msg : $("#niName").val()+'님 나갔습니다.'
				}
			ws.send(JSON.stringify(option))
			
			$('#goout').submit()
		}


		function sendCome() {
			var option ={
				type: "come",
				roomNumber: $("#roomNumber").val(),
				sessionId : $("#sessionId").val(),
				userName : $("#userName").val(),
				msg : $("#niName").val()+'님 들어왔습니다.'
			}
			ws.send(JSON.stringify(option))
			
		}

		function send() {
			if($("#chatting").val() != ''){
				var option ={
						type: "message",
						roomNumber: $("#roomNumber").val(),
						sessionId : $("#sessionId").val(),
						userName : $("#userName").val(),
						msg : $("#chatting").val()
					}
					ws.send(JSON.stringify(option))
					
					$('#chatting').val("");
			}
			
		}
		</script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
	</head>
	<!--Coded With Love By Mutiullah Samim-->
	<body>
	
<!-- 	friend?roomMember="+$("#userName").val()+"&roomNumber="+$("#roomNumber").val()+"&count=0 -->
	
	<form action="friend" id="goout" method="post">
	
	<input type="hidden" name="roomMember" id="userName" value="${id}" />
	<input type="hidden" name="roomNumber" id="roomNumber" value="${roomNumber}"> 
	</form>
	<input type="hidden" id="members" value="${getRoomNum}">
	<input type="hidden" id="sessionId" value="">
	<input type="hidden" id="roomName" value="${roomName}">
	<input type="hidden" id="niName" value="${niName}" />
	
		<div class="container-fluid h-100">
			<div class="row justify-content-center h-100">
				<div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
					<div class="card-body contacts_body">
						<ui class="contacts">
						<c:forEach var="vo" items="${rlist}">
						<li class="friend" email="${vo.email}" >
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
							<span id="room" class="roomName font">${roomName}  #<label class="center">${roomNumber}</label>(<label id="getRoomNum">${getRoomNum-1}</label>)</span>
							<span class="float-right" onclick="goout()"><i class="fa-solid fa-right-from-bracket"></i></span>
						</div>
						<div class="card-body msg_card_body">
						</div>
						<div class="card-footer">
							<div class="input-group">
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
		<script type="text/javascript">
		$('.friend').click(function(){
			$('.contacts > .friend').removeClass('active')
			$(this).addClass('active')
			console.log($(this).filter('.user_info').filter('span'))
			$('#friendName').text( $(this).find('span').text())
			$('#friendImg').attr('src',$(this).find('img').attr('src'))
		})
		
		$(document).ready(function(){
			$('#action_menu_btn').click(function(){
				$('.action_menu').toggle();
			});
				});
		</script>
	</body>
</html>
