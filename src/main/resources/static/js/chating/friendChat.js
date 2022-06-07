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
		
		//나가기
		$('#goOut').click(function(){
			location.href='/friend/friendList'
		})
