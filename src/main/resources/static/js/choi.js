	$('.modal-button').click(function() {
			$('this').css({
				'z-index' : 105000
			})
		});

		/* 마이페이지 이동*/
		/* 	$('.login-btn').click(function() {

				location.href = 'review.html';

			}) */

		$('#listAdd2').click(function() {
			alert('이미 추가된 가게입니다.');
		})

		/*	가게 상세페이지에서 추가하기 버튼을 눌렀을때	
				가게 번호를 가져오고 처리
				type : 포스트방식
				datatype: text
				
		 */
		$('#listAdd').click(function() {
			var shopNumber = $(this).attr('value');
			/* 	alert(shopNumber); */

			let param = {
				shopNumber : shopNumber
			}
			$.ajax({
				url : 'listingDetailsAddList.do',

				type : 'post',
				datatype : 'text',
				data : param,
				success : function(data) {

					alert("추가 되었습니다.");
					
					$('#listAdd').html(data)
					
					
				
			
					
				},

				error : function(err) {

					alert('이미 추가된 가게입니다.');

				}
			});

		});
		
		
		
		var oldListCnt = '${oldListCnt}';
		// 조회 인덱스
		var startIndex = 1;	// 시작
		var searchStep = 2;	// 2개설정
		var shopNumber = $('#searchMoreNotify').val();
		
		
		
		// 로딩시 실행
		readOldNotify(startIndex);
		
		// 더보기 클릭시
		$('#searchMoreNotify').click(function(){
			
			startIndex += searchStep;
			readOldNotify(startIndex);
			
		})
			
	
		function readOldNotify(index){
			let_endIndex = index+searchStep-1;	//인덱스
			$.ajax({
				type: "post",
				async: "false",
				dataType: "json",
				data: {
					shopNumber: shopNumber,
					startIndex: startIndex,
					endIndex: let_endIndex
				},
				url: "listingDetails4.do",
				success: function (data, textStatus) {
					//console.log(data);
					//console.log(data.url);
					//alert(data[0].SHOPNUMBER)
					//alert( data[0].REVIEWCONTENT);
					let NodeList = "";
					for(i = 0; i < data.length; i++){
						let newNode = "<div style='display: none;' class='card form-group col-sm-12 mx-auto p-0 reviewChang')>";
						newNode += "<div class='card-body pt-3'><div class='row px-3 mb-2'>";
						newNode += "<div col-mb-4 ><img alt='' class= 'listing__details__comment__item__picccc'  width='80' height='80' src='./resources/upload/"+data[i].MEMBER_REALFNAME+"'>";
						newNode += "<div><h5>"+data[i].MEMBER_NICKNAME+"님</h5></div>";
						//newNode += "<div><h5>"+data[i].REVIEWDATE+"님</h5></div>";
						newNode += "<div class='d-block text-gray-dark col-mb-offset-4'><img class ='dlalwl' alt='' width='180' height='120' src='./resources/reviewUpload/"+data[i].REVIEWREALFNAME+"'></div></div>";
						//newNode += "<span class='text-muted ml-auto '>"
						//if(	data[i].REVIEWGRADE == '맛있어요'){	
						//	newNode += "<i class='fa fa-thumbs-up tasteGrade' aria-hidden='true'></i></span>";
						//}
						newNode += "<div class='col-mb-5 box'><h4>리뷰내용 : </h4></br>";
						newNode += "<p id='reviewText'>"+data[i].REVIEWCONTENT+"</p></div>";
						newNode += "<div class='text-muted ml-auto listing__details__comment__item__rating'>"+data[i].REVIEWGRADE+"</div>";
						newNode += "</div><span><i class='fa fa-share-square-o'></i></span><button value='"+data[i].REVIEWNUMBER+"' class = 'reportReview report_button'>신고하기</button>";
						newNode += "<div class='dateReview'><span>작성일: "+data[i].REVIEWDATE+"<span></div></div></div>";
						NodeList += newNode;
						
					
					}
					
					$(NodeList).appendTo($("#oldList")).slideDown();
					rateImoji();
					// 더보기 버튼 삭제
								
				},
				error: function (err) {
					alert('에러발생');
					console.log(err)
				}
			});
		}
 
// 평가 이모지 넣기
rateImoji();
		
function rateImoji(){		
	$('.listing__details__comment__item__rating').each(function(){
		const rate = $(this).text().trim();
		if(rate == '맛있어요'){
			$(this).html(rate+'<i class="fa fa-thumbs-up tasteGrade" aria-hidden="true"></i>');
		} else if (rate == '맛없어요'){
			$(this).html(rate+'<i class="fa fa-thumbs-down tasteGrade" aria-hidden="true"></i>');
		} else {
			$(this).html(rate+'<i class="fa fa-meh-o tasteGrade" aria-hidden="true"></i>');
		}
	
	});
}

// 모달창 띄우기
$(document).on('click','.reportReview',function(){
	//alert($(this).val())
	$('#mw_temp').show();
	
	$('#mw_temp').find('input[name=reviewNumber]').val($(this).val())


})

//모달창 닫기
$('.modalClose').click(function(){
	$('#mw_temp').hide();
})



$('.modalClose').click(function(){
$('.report_op').val('')

});







		