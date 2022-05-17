var mapContainer = document.getElementById("map");
mapOption = {
  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
  level: 5, // 지도의 확대 레벨
};

var map = new daum.maps.Map(mapContainer, mapOption);
//마커 이미지
// var imageSrc =
//     "https://t1.daumcdn.net/local./resources/img/localimages/07/mapapidoc/markerStar.png", // 마커이미지의 주소입니다
//   imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
//   imageOption = { offset: new kakao.maps.Point(27, 69) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

var geocoder = new daum.maps.services.Geocoder();

//DB adddress 에 있는 값이 들어와야함
var listData = [
  "서울특별시 강남구 일원동 광평로 10길 15",
  "서울특별시 강남구 일원동",
];

//DB shop_name이 들어와야함
var listShop = ["집", "오벤또"];

listData.forEach(function (addr, index) {
  geocoder.addressSearch(addr, function (result, status) {
    if (status === daum.maps.services.Status.OK) {
      // var markerImage = new kakao.maps.MarkerImage(
      //   imageSrc,
      //   imageSize,
      //   imageOption
      // );
      var coords = new daum.maps.LatLng(result[0].y, result[0].x);
      console.log(result[0].y);
      console.log(result[0].x);

      var marker = new daum.maps.Marker({
        map: map,
        position: coords,
        //image: markerImage,
      });
      //마커 위에 올라가는 입력창 초기 이미지
      // var infowindow = new daum.maps.InfoWindow({
      //   content:
      //   '<div style="width:150px;text-align:center;padding:6px 0;">' +
      //   listShop[index] +
      //   "</div>",
      //   disableAutoPan: true,
      // });
      //infowindow.open(map, marker);

      map.setCenter(coords);

      // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
      var content =
        '<div class="customoverlay">' +
        '  <a href="" target="_blank">' +
        '    <span class="title">' +
        listShop[index] +
        "</span>" +
        "  </a>" +
        "</div>";

      var position = new kakao.maps.LatLng(result[0].y, result[0].x);
      // 커스텀 오버레이를 생성합니다
      var customOverlay = new kakao.maps.CustomOverlay({
        map: map,
        position: position,
        content: content,
        yAnchor: 0.2,
      });
    }
  });
});
