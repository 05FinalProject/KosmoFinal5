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
		 <script type="text/javascript">
		var ws ;
		
		window.onload = function(){
			//websocket 객체생성(websocket서버 연결)
			ws= new WebSocket("ws://" + location.host + "/chating/"+$("#friendNo").val());
			ws.onopen = function(data){
				//소켓이 열리면 동작
			}
			
			wsEvt()
			
			document.addEventListener("keypress", function(e){
				if(e.keyCode == 13){ //enter press
					send();
				}
			});

		}
		
		function wsEvt() {
			
			var today = new Date()
			var noon = '오후'
			if(today.getHours() < 12){
				noon = '오전'
			}
			
			//화면 뜨자마자 아니면 친구선택할때에 채팅기록 뜨기
			
			var mDate = new Date()
			var dateSigh;
			$.ajax({
				url:'/api/messageHistory',
				type:'get',
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",

				data:{	friendNo : $("#friendNo").val()
					},
				 contentType: "application/json; charset=utf-8;",
				 dataType: "json",
				 //
				 success:function(data){
					 
					//원래 선택했던 친구의 기록 지우기
					 $('.msg_card_body').empty()
					 //시간순으로 채팅기록(data) 출력
					  for(var i=data.length-1;i>=0;i--){
						  var messageDate = new Date(data[i].time)
						  //오늘 날자랑 다르면 채팅기록의 날짜출력
						  if(messageDate.getFullYear() != mDate.getFullYear() | messageDate.getMonth() != mDate.getMonth() | messageDate.getDate() != mDate.getDate()){
							  mDate = messageDate
							  dateSigh = messageDate.getFullYear()+'년'+ (messageDate.getMonth()+1)+'월'+messageDate.getDate()+'일'
	 						  $('.msg_card_body').append('<p class="dateSign">'+dateSigh+'</p>')
						  }
						  //오전오후 
						  var noon = '오후'
						  if(messageDate.getHours() < 12){
							noon = '오전'
						  }
 						 //sign 1이면 A가 B에게 메시지 전송하기, 2면 B가 A에게 메시지 전송하기
 						 //내 매시지인지 딴 분 매시지인지 if문으로 판단해서 화면 출력하기
						  if((data[i].user1 == $('#userNickname').val() && data[i].sign == '1') | (data[i].user2 == $('#userNickname').val() && data[i].sign == '2')){
							 $('.msg_card_body').append('<div class="d-flex justify-content-end mb-4">'+
										'<div class="msg_cotainer_send">'+
										data[i].message+
										'<span class="msg_time0_send">'+ messageDate.getHours()+':'+ messageDate.getMinutes()+' '+noon+'</span>'+
										'</div>'+
									'<div class="img_cont_msg">'+
									'<img src="'+$('#userImg').val()+'" class="rounded-circle user_img_msg">'+
									'</div>'+
								'</div>')
								$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight')); 
						 }else{
							 $(".msg_card_body").append('<div class="d-flex justify-content-start mb-4">'+
									'<div class="img_cont_msg">'+
										'<img src="'+$('#friendImg').val()+'" class="rounded-circle user_img_msg">'+
									'</div>'+
									'<div class="msg_cotainer">'+
									data[i].message+ 
										'<span class="msg_time">'+ messageDate.getHours()+':'+ messageDate.getMinutes()+' '+noon+'</span>'+
									'</div>'+
								'</div>');	
								$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight')); 
						 } 
					 }  
				 }
			})
			
			//메세지 받기
			ws.onmessage = function(data){
				var msg = data.data;
				console.log(msg)
				if(msg != null && msg.type != ''){
					var d = JSON.parse(msg);
					console.log(d)
					var si = d.sessionId
					
				}
				
				
				var today = new Date()
				var noon = '오후'
				if(today.getHours() < 12){
					noon = '오전'
				}
				
				if(d.type == "getId"){
					
					var si = d.sessionId
					
					$("#sessionId").val(si); 
					
				}
				
				if(d.type == 'message'){
					if(d.userName == $("#userNickname").val()){
								$('.msg_card_body').append('<div class="d-flex justify-content-end mb-4">'+
								'<div class="msg_cotainer_send">'+
								d.msg+
								'<span class="msg_time0_send">'+ today.getHours()+':'+ today.getMinutes()+'  '+noon+'</span>'+
								'</div>'+
							'<div class="img_cont_msg">'+
							'<img src="'+$('#userImg').val()+'" class="rounded-circle user_img_msg">'+
							'</div>'+
						'</div>')
						
						$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight'));
					}else{
						 $(".msg_card_body").append('<div class="d-flex justify-content-start mb-4">'+
							'<div class="img_cont_msg">'+
								'<img src="'+$('#friendImg').val()+'" class="rounded-circle user_img_msg">'+
							'</div>'+
							'<div class="msg_cotainer">'+
							 d.msg + 
								'<span class="msg_time">'+ today.getHours()+':'+ today.getMinutes()+'  '+noon+'</span>'+
							'</div>'+
						'</div>');	
						
						$('.msg_card_body').scrollTop($('.msg_card_body').prop('scrollHeight')); 
						
					}
				}
			}
		}
		
		//메시지 발송 메소드
		function send() {
			if($("#chatting").val() != ''){
				var option ={
						sessionId : $("#sessionId").val(),
						type: "message",
						roomNumber: $('#friendNo').val(),
						userName : $('#userNickname').val(),
						msg : $("#chatting").val()
					}
				//메시지 발송
				ws.send(JSON.stringify(option))
				//메시지 DB에 저장하기
				$.ajax({
					url:'/api/saveMessage',
					type:'get',
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",

					data:{	chatingMessage:$("#chatting").val(),
							friendNo:$("#friendNo").val(),
							userEmail:$('#userEmail').val()
						}
				})
			}
			$('#chatting').val("");
		}
		</script> 
		
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
		
		<script type="text/javascript">
		
		//친구 클릭할때
		$('.friend').click(function(){
			//이미지 바꾸기
			$('#friendImg').val($(this).find('img').attr('src'))
			//원래 음영효과 삭제
			$('.contacts > .friend').removeClass('active')
			//친구 음영효과 추가
			$(this).addClass('active')
			//id="friendEmail"의 hidden테그 value값이 클릭했던 친구email를 지정
			$('#friendEmail').val($(this).attr('email'))
			$('#friendName').text( $(this).find('span').text())

			$('#friendImage').attr('src',$(this).find('img').attr('src'))
			//**********
			//원래 WebSocket 연결 종료
			ws.close()
			$('#friendNo').val($(this).attr('content'))
			//클릭했던 친구랑 실시 채팅하기위해 새 WebSocket 연결하기
			ws= new WebSocket("ws://" + location.host + "/chating/"+$('#friendNo').val());
			ws.onopen = function(data){
				//소켓이 열리면 동작
				
			}
			
			wsEvt()
			
			document.addEventListener("keypress", function(e){
				if(e.keyCode == 13){ //enter press
					send();
				}
			});
		})
		
		$('#action_menu_btn').click(function(){
				$('.action_menu').toggle();
			});
		
		//친구 검색기능
		$('.input-group-prepend').click(function(){
			//jquery for문
			$('.contacts').find('li').each(function(i,e){
				//친구 닉네임이 입력하는내용을 포함하지않으면 감추기
				if(!$(this).find('span').text().includes($('#search').val())){
					$(this).addClass('di-none')
				}else{	//포함하면 출력
					$(this).removeClass('di-none')
				}
			})
		}) 
		
		//친구 차단 기능
		$('#blackList').click(function(){
			//DB에 친구차단상태 변경
			$.ajax({
				url:'/api/blackList',
				type:'get',
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				data:{	
						friendNo:$("#friendNo").val()
					}
			})
			//차단한친구를 친구목록에서 삭제
			$('.active').remove()
			//첫번째 친구 클릭
			$('.friend').first().click()
		})
		
		</script>
	</body>
</html>
