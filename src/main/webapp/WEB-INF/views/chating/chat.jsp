<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="/css/chating/chating.css" rel="stylesheet">

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
		if(msg != null && msg.type != ''){
			//파일 업로드가 아닌 경우 메시지를 뿌려준다.
			var d = JSON.parse(msg);
			console.log(d)
			if(d.type == "getId"){
				sendCome()
				var si = d.sessionId != null ? d.sessionId : "";
				if(si != ''){
					$("#sessionId").val(si); 
				}
			}else if(d.type == "message"){
				if(d.sessionId == $("#sessionId").val()){
					
					$("#chating").append('<article class="msg-container msg-self" id="msg-0">'+
							'<div class="msg-box">'+
							'<div class="flr">'+
								'<div class="messages">'+
									'<p class="msg" id="msg-1">'+
										'나 :' + d.msg +
									'</p>'+
								'</div>'+
							'</div>'+
							'<img class="user-img" id="user-0" src="//gravatar.com/avatar/56234674574535734573000000000001?d=retro" />'+ 
						'</div>'+
					'</article>');	
				}else{
					/* $("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>"); */
					$("#chating").append('<article class="msg-container msg-remote" id="msg-0">'+
							'<div class="msg-box">'+
							'<img class="user-img" id="user-0" src="//gravatar.com/avatar/002464562345234523523568978962?d=retro" /> '+ 
							'<div class="flr">'+
								'<div class="messages">'+
									'<p class="msg" id="msg-0">'+
										d.userName + " :" + d.msg + 
									'</p>'+
								'</div>'+
							'</div>'+
							
						'</div>'+
					'</article>');	
				}
					
			}else if(d.type == "come"){
				$("#chating").append("<p class='comego'>" + d.msg + "</p>");
				
				
				
				$.ajax({
					url:'/api/members',
		            type:'get',
		            data:{roomName:$("#room").text(),id:'1'},
		            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		            success:function(data){
		            	
		                $('#room').text( $("#roomName").val()+'(' + data + ')')
		            }
				})
			}else if(d.type == "goout"){
				$("#chating").append("<p class='comego'>" + d.msg + "</p>");	
				$.ajax({
					url:'/api/members',
		            type:'get',
		            data:{roomName:$("#room").text(),id:'-1'},
		            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		            success:function(data){
		            	
		                $('#room').text( $("#roomName").val()+'(' + data + ')')
		            }
				})
			}else{
				console.warn("unknown type!")
			}
		}else{
			//파일 업로드한 경우 업로드한 파일을 채팅방에 뿌려준다.
			var url = URL.createObjectURL(new Blob([msg]));
			$("#chating").append("<div class='img'><img class='msgImg' src="+url+"></div><div class='clearBoth'></div>");
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
			msg : $("#userName").val()+'님 나갔습니다.'
		}
	ws.send(JSON.stringify(option))
	
	location.href = "friend?room_member="+$("#userName").val()+"&room_num="+$("#roomNumber").val();
	
}



function sendCome() {
	var option ={
		type: "come",
		roomNumber: $("#roomNumber").val(),
		sessionId : $("#sessionId").val(),
		userName : $("#userName").val(),
		msg : $("#userName").val()+'님 들어왔습니다.'
	}
	ws.send(JSON.stringify(option))
	
}




function send() {
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

</script>

</head>
<body>

	<input type="hidden" id="members" value="${getRoomNum.count }">
	<input type="hidden" id="sessionId" value="">
	<input type="hidden" id="roomName" value="${roomName}">
	<input type="hidden" id="roomNumber" value="${roomNumber}"> 
	<input type="hidden" name="userName" id="userName" value="${id}" />
	
	
	<h1 id="room">${roomName}(${getRoomNum.count-1 })</h1>
	
	
	<section class="chatbox">
	<section class="chat-window" id="chating">
			
	</section>
	<div class="chat-input" >
			<input type="text" autocomplete="on" placeholder="Type a message" id="chatting" />
			<button onclick="send()" id="sendBtn" >
                <svg style="width:24px;height:24px" viewBox="0 0 24 24"><path fill="rgba(0,0,0,.38)" d="M17,12L12,17V14H8V10H12V7L17,12M21,16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V7.5C3,7.12 3.21,6.79 3.53,6.62L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.79,6.79 21,7.12 21,7.5V16.5M12,4.15L5,8.09V15.91L12,19.85L19,15.91V8.09L12,4.15Z" /></svg> 
            </button>
		</div>
	</section>
	<button onclick="goout()">나가기</button>
	<script type="text/javascript">
	$('.chat-input input').keyup(function(e) {
		if ($(this).val() == '')
			$(this).removeAttr('good');
		else
			$(this).attr('good', '');
	});
	</script>
	
	
	
	
	
	
	
</body>
</html>