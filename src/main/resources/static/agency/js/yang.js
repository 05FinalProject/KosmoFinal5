const modal = document.querySelector(".filter-modal");

//modal창 열고 닫기
$("#filter-modal-open").click(function () {
  $(".filter-modal").css("display", "block");
});

$("#close").click(function () {
  modalClose();
});

function modalClose() {
  $("#popup").fadeOut();
}

$("#closeImg").click(function name(params) {
  $(".filter-modal").fadeOut();
  // css("display", "none");
});

//필터 음식종류
$("#koreanFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/koreanFood.png") {
    $("#koreanFood").attr("src", "./resources/img/modal/koreanFoodClick.png");
    $("#koreanFoodInput").val("한식");
  } else {
    $("#koreanFood").attr("src", "./resources/img/modal/koreanFood.png");
    $("#koreanFoodInput").val("");
  }
});

$("#japaneseFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/japaneseFood.png") {
    $("#japaneseFood").attr(
      "src",
      "./resources/img/modal/japaneseFoodClick.png"
    );
    $("#japaneseFoodInput").val("일식");
  } else {
    $("#japaneseFood").attr("src", "./resources/img/modal/japaneseFood.png");
    $("#japaneseFoodInput").val("");
  }
});

$("#chineseFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/chineseFood.png") {
    $("#chineseFood").attr("src", "./resources/img/modal/chineseFoodClick.png");
    $("#chineseFoodInput").val("중식");
  } else {
    $("#chineseFood").attr("src", "./resources/img/modal/chineseFood.png");
    $("#chineseFoodInput").val("");
  }
});

$("#westernFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/westernFood.png") {
    $("#westernFood").attr("src", "./resources/img/modal/westernFoodClick.png");
    $("#westernFoodInput").val("양식");
  } else {
    $("#westernFood").attr("src", "./resources/img/modal/westernFood.png");
    $("#westernFoodInput").val("");
  }
});

$("#worldFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/worldFood.png") {
    $("#worldFood").attr("src", "./resources/img/modal/worldFoodClick.png");
    $("#worldFoodInput").val("세계음식");
  } else {
    $("#worldFood").attr("src", "./resources/img/modal/worldFood.png");
    $("#worldFoodInput").val("");
  }
});

$("#buffet").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/buffet.png") {
    $("#buffet").attr("src", "./resources/img/modal/buffetClick.png");
    $("#buffetInput").val("뷔페");
  } else {
    $("#buffet").attr("src", "./resources/img/modal/buffet.png");
    $("#buffetInput").val("");
  }
});

$("#cafe").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/cafe.png") {
    $("#cafe").attr("src", "./resources/img/modal/cafeClick.png");
    $("#cafeInput").val("카페");
  } else {
    $("#cafe").attr("src", "./resources/img/modal/cafe.png");
    $("#cafeInput").val("");
  }
});

$("#pup").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/pup.png") {
    $("#pup").attr("src", "./resources/img/modal/pupClick.png");
    $("#pupInput").val("주점");
  } else {
    $("#pup").attr("src", "./resources/img/modal/pup.png");
    $("#pupInput").val("");
  }
});

//필터 주소
$("#seoul").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".seoul").css("display", "block");
  $(".seoul").css("display", "block");
});

$("#gyeonggido").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".gyeonggido").css("display", "block");
});

$("#incheon").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".incheon").css("display", "block");
});

$("#daegu").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".daegu").css("display", "block");
});

$("#busan").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".busan").css("display", "block");
});

$("#jeju").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".jeju").css("display", "block");
});

$("#daejeon").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".daejeon").css("display", "block");
});

$("#gwangju").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".gwangju").css("display", "block");
});

$("#gangwondo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".gangwondo").css("display", "block");
});

$("#gyeongsangnamdo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".gyeongsangnamdo").css("display", "block");
});

$("#gyeongsangbukdo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".gyeongsangbukdo").css("display", "block");
});

$("#jeollanamdo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".jeollanamdo").css("display", "block");
});

$("#jeollabukdo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".jeollabukdo").css("display", "block");
});

$("#chungcheongnamdo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".chungcheongnamdo").css("display", "block");
});

$("#chungcheongbukdo").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".chungcheongbukdo").css("display", "block");
});

$("#ulsan").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".ulsan").css("display", "block");
});

$("#sejong").click(function name(params) {
  $(".addressGu > div").css("display", "none");
  $(".sejong").css("display", "block");
});

$(".squares > div > input").click(function name(params) {
  if ($(this).hasClass("btnClcik")) {
    $(".pop-up-area").removeClass("btnClcik");
  } else {
    $(".pop-up-area").removeClass("btnClcik");
    $(this).addClass("btnClcik");
  }
  if ($("#addressSi").val() == $(this).val()) {
    $("#addressSi").val("");
  } else {
    $("#addressSi").val($(this).val());
  }
});

$(".addressGu > div > input").click(function name(params) {
  if ($(this).hasClass("btnClcik")) {
    $(".pop-up-dongnae").removeClass("btnClcik");
  } else {
    $(".pop-up-dongnae").removeClass("btnClcik");
    $(this).addClass("btnClcik");
  }
  if ($("#addressGu").val() == $(this).val()) {
    $("#addressGu").val("");
  } else {
    $("#addressGu").val($(this).val());
  }
});

//필터 가격대
$("#manwonLess").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/manwonLess.png") {
    $("#manwonLess").attr("src", "./resources/img/modal/manwonLessClick.png");
    $("#manwonLessInput").val("1만원 미만");
  } else {
    $("#manwonLess").attr("src", "./resources/img/modal/manwonLess.png");
    $("#manwonLessInput").val("");
  }
});

$("#manwonMore").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/manwonMore.png") {
    $("#manwonMore").attr("src", "./resources/img/modal/manwonMoreClick.png");
    $("#manwonMoreInput").val("1만원 이상");
  } else {
    $("#manwonMore").attr("src", "./resources/img/modal/manwonMore.png");
    $("#manwonMoreInput").val("");
  }
});
$("#threeManwonMore").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/threeManwonMore.png") {
    $("#threeManwonMore").attr(
      "src",
      "./resources/img/modal/threeManwonMoreClick.png"
    );
    $("#threeManwonMoreInput").val("3만원 이상");
  } else {
    $("#threeManwonMore").attr(
      "src",
      "./resources/img/modal/threeManwonMore.png"
    );
    $("#threeManwonMoreInput").val("");
  }
});
$("#fiveManwonMore").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/fiveManwonMore.png") {
    $("#fiveManwonMore").attr(
      "src",
      "./resources/img/modal/fiveManwonMoreClick.png"
    );
    $("#fiveManwonMoreInput").val("5만원 이상");
  } else {
    $("#fiveManwonMore").attr(
      "src",
      "./resources/img/modal/fiveManwonMore.png"
    );
    $("#fiveManwonMoreInput").val("");
  }
});
