
//채팅방만들기 버튼누를때 채팅방이름이랑 비밀번호를 입력하는곳 나타나기
$('#makeRoom').click(function(){
	$('#insertRoom').slideDown()
})
//취소버튼 누를때 다시 사라지고 입력하던 값도 지우기
$('#up').click(function(){
	$('#insertRoom').slideUp()
	$('.in').val('')
})
$('#none').click(function(){
	$('.inputCenter').val('')
	$('.fontRed').slideUp()
})

$('.more-link').click(function(){
	//modal 방이름이랑 방번호 주기
	$('#modalRoom').text($(this).attr('content'))
	//modal 방번호 값을 주기
	$('#modalRoomNum').val($(this).attr('content').split('#')[1]) 
	
	$('#modalRoomName').val($('#modalRoom').text().split('#')[0].trim())
	$('#modalRoomNum').val($('#modalRoomNum').val())
})

//확인 버튼 누를때에 ajax
$('#goInRoom').click(function(e){
	$.ajax({
		url:'/api/checkRoomPass',
		data:{roomNumber:$('#modalRoomNum').val(),roomPass:$('#modalRoomPass').val()},
		type:'get',
		success:function(data){
			//비밀번호 맞으면 채팅방에 들어가기
			if(data=="yes"){
				$('#modalForm').submit()
			//맞지 않으면 도움말 뜨기	
			}else{
				$('#passWrong').slideDown()
			}
		}
	})
})

$('#roomSearch').click(function(){
	$.ajax({
		url:'/api/roomSearch',
		data:{roomNumber:$('#searchInput').val()}, 
		type:'get',
		success:function(data){
			$('#roomList').empty()
			data.forEach(function(d){
				$('#roomList').append('<div class="pet-grid-col col-12 col-md-6">'+
                        '<div class="lana_pet type-lana_pet post-1 card pet-grid-card h-100">'+
                        '<div class="card-body">'+
                           ' <h5 class="post-title card-title">'+
                                d.roomName+' #'+d.roomNumber+
                            '</h5>'+
                        '</div>'+
                        '<div class="card-footer">'+
                            '<p class="card-text">'+
                                '<a class="more-link card-link" onclick="search()" data-toggle="modal" data-target="#myModal" content="'+d.roomName+' #'+d.roomNumber+'">들어가기 <i class="lana-icon-arrow-right text-primary"></i>'+
                                '</a>'+
                            '</p>'+
                        '</div>'+
                    '</div>'+
                '</div>').ready(function(){
                	$('.more-link').click(function(){
                		//modal 방이름이랑 방번호 주기
                		$('#modalRoom').text($(this).attr('content'))
                		//modal 방번호 값을 주기
                		$('#modalRoomNum').val($(this).attr('content').split('#')[1]) 
                		
                		$('#modalRoomName').val($('#modalRoom').text().split('#')[0].trim())
                		$('#modalRoomNum').val($('#modalRoomNum').val())
                	})
                })
			})
		}
	})
})
