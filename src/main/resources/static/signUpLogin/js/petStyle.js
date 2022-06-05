/* 이미지 업로드 */
function DropFile(dropAreaId, fileListId) {
				  let dropArea = document.getElementById(dropAreaId);
				  let fileList = document.getElementById(fileListId);

				  function preventDefaults(e) {
				    e.preventDefault();
				    e.stopPropagation();
				  }

				  function highlight(e) {
				    preventDefaults(e);
				    dropArea.classList.add("highlight");
				  }

				  function unhighlight(e) {
				    preventDefaults(e);
				    dropArea.classList.remove("highlight");
				  }

				  function handleDrop(e) {
				    unhighlight(e);
				    let dt = e.dataTransfer;
				    let files = dt.files;

				    handleFiles(files);

				    const fileList = document.getElementById(fileListId);
				    if (fileList) {
				      fileList.scrollTo({ top: fileList.scrollHeight });
				    }
				  }

				  function handleFiles(files) {
				    files = [...files];
				    // files.forEach(uploadFile);
				    files.forEach(previewFile);
				  }

				  function previewFile(file) {
				    console.log(file);
				    renderFile(file);
				  }

				  function renderFile(file) {
				    let reader = new FileReader();
				    reader.readAsDataURL(file);
				    reader.onloadend = function () {
				      let img = dropArea.getElementsByClassName("preview")[0];
				      img.src = reader.result;
				      img.style.display = "block";
				    };
				  }

				  dropArea.addEventListener("dragenter", highlight, false);
				  dropArea.addEventListener("dragover", highlight, false);
				  dropArea.addEventListener("dragleave", unhighlight, false);
				  dropArea.addEventListener("drop", handleDrop, false);

				  return {
				    handleFiles
				  };
				}

				const dropFile = new DropFile("drop-file", "files");
				
/******************************************************************************************/
/* 반려견 등록 */

	
/**
*	유효성 검사 정규식
 */
var RegexName = /^[가-힣]+$/;
var RegexWeight = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{3,4})$/;


// 에러박스 문구
var blank = "필수 입력 사항입니다.";


/*
	반려견 등록 버튼 클릭 -> 필수 입력 사항 + 유효성 검사
*/
$('#petAdd').click(function(){

	// input에 입력된 값을 공백제거하고 변수에 담기
	var petName = $.trim($("#petName").val());
	var petWeight = $.trim($("#petWeight").val());
	
	/* 이름 */
	if(petName == ''){
		$('label[for="petName"] .error_box').html(blank);
		$('#petName').focus();
    		return;
		}else{
		$('label[for="petName"] .error_box').html("");
		}
	if( !RegexName.test(petName) ){

		$('label[for="petName"] .error_box').html("한글만 입력 가능합니다.");
		return;
	}else{
		$('label[for="petName"] .error_box').html("");
		}
		
	
	/* 몸무게 */
	if(petWeight == ''){
		$('input[for="petWeight"] .error_box').html(blank);
		$('#petWeight').focus();
    		return false;
		}else{
		$('input[for="petWeight"] .error_box').html("");
		}
	if( !RegexWeight.test(petWeight) ){

		$('input[for="petWeight"] .error_box').html("몸무게 형식이 올바르지 않습니다.");
		return;
	}else{
		$('input[for="petWeight"] .error_box').html("");
		}
	
	if($("#petVariety").val() =="")
		alert('견종을 선택해주세요.');
		return false;
});
