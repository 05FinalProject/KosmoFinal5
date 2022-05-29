var time = 0;
var starFlag = true;



$(document).ready(function() {
	buttonEvt();
});

function init() {
	document.getElementById("time").innerHTML = "00:00:00";
}

function buttonEvt() {
	var hour = 0;
	var min = 0;
	var sec = 0;
	var timer;

	// start btn
	$("#startbtn").click(function() {
		var today = new Date();

		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var timeString = hours + '시 ' + minutes + "분";
		$("#walk-start").val(timeString);
		
		if (starFlag) {
			$(".fa").css("color", "#FAED7D");
			this.style.color = "#4C4C4C";
			starFlag = false;

			if (time == 0) {
				init();
			}

			timer = setInterval(function() {
				time++;

				// min = Math.floor(time / 60);
				// hour = Math.floor(min / 60);
				// sec = time % 60;
				// min = min % 60;
				timeChange();

				var th = hour;
				var tm = min;
				var ts = sec;
				if (th < 10) {
					th = "0" + hour;
				}
				if (tm < 10) {
					tm = "0" + min;
				}
				if (ts < 10) {
					ts = "0" + sec;
				}

				document.getElementById("time").innerHTML = th + ":" + tm + ":" + ts;
			}, 1000);
		}
	});

	// pause btn
	$("#pausebtn").click(function() {
		if (time != 0) {
			$(".fa").css("color", "#FAED7D");
			this.style.color = "#4C4C4C";
			clearInterval(timer);
			starFlag = true;

		}
	});

	// stop btn
	$("#stopbtn").click(function() {
		var today = new Date();

		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);

		var timeString = hours + '시 ' + minutes + "분";
		$("#walk-end").val(timeString);
	
		if (time != 0) {
			//나중에 db에 저장할 산책기록 시간값 ==> 분단위로 계산
			console.log(min);
			$("#walk-time").val(min);
			$(".fa").css("color", "#FAED7D");
			this.style.color = "#4C4C4C";
			clearInterval(timer);
			starFlag = true;
			time = 0;
			init();
		}
	});

	function timeChange(params) {
		min = Math.floor(time / 60);
		hour = Math.floor(min / 60);
		sec = time % 60;
		min = min % 60;
	}


	






}
