 var mapContainer = document.getElementById("map"), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
          level: 5, // 지도의 확대 레벨
        };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
      var lat;
      var lon;
      //openWeather 키값
      var key = "fc7988e15b3045e73a0c34dd61b6fa10";

      var options = { enableHighAccuracy: true, timeout: 5000, maximumAge: 0 };
      // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
      if (navigator.geolocation) {
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {
          console.log(position);
          (lat = position.coords.latitude), // 위도
            (lon = position.coords.longitude); // 경도

          //날씨  가져오기
          $.ajax({
            url: "http://api.openweathermap.org/data/2.5/weather",
            dataType: "json",
            type: "GET",
            data: { lat: lat, lon: lon, appid: key, units: "metric" },
            success: function (data) {
              var $Icon = data.weather[0].icon.substr(0, 2);
              var $Temp = Math.floor(data.main.temp) + "º";
              var $city = data.name;
              var $Icon2 = data.weather[0].icon.substr(0, 2);
              $(".CurrIcon").append(
                '<i class="' + weatherIcon[$Icon] + '"></i>'
              );
              $(".CurrTemp").prepend($Temp);
              $(".City").append($city);
              let iconc = $(".iconc");
              let iconselect = data.weather[0].icon.substr(0, 2);
              iconc.append(
                "<img src=" +
                  weater_icon[iconselect] +
                  ' width="50px" height="50px">'
              );
            },
          }); //날씨 끝

          var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다

          // 마커와 인포윈도우를 표시합니다
          displayMarker(locPosition, message);
        });
      } else {
        // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),
          message = "geolocation을 사용할수 없어요..";

        displayMarker(locPosition, message);
      }

      console.log(lat);
      console.log(lon);

      function displayMarker(locPosition, message) {
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
          map: map,
          position: locPosition,
        });

        var iwContent = message, // 인포윈도우에 표시할 내용
          iwRemoveable = true;

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
          content: iwContent,
          removable: iwRemoveable,
        });

        // 인포윈도우를 마커위에 표시합니다
        infowindow.open(map, marker);

        // 지도 중심좌표를 접속위치로 변경합니다
        map.setCenter(locPosition);
      }

      //날씨 이모티콘
      let weatherIcon = {
        "01": "fas fa-sun",
        "02": "fas fa-cloud-sun",
        "03": "fas fa-cloud",
        "04": "fas fa-cloud-meatball",
        "09": "fas fa-cloud-sun-rain",
        10: "fas fa-cloud-showers-heavy",
        11: "fas fa-poo-storm",
        13: "far fa-snowflake",
        50: "fas fa-smog",
      };

      //날씨 사진
      let weater_icon = {
        "01": "https://static.xx.fbcdn.net/rsrc.php/v3/yv/r/m5H9uv-AZuI.png", //맑음
        "02": "https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/xOhmdPeSdi3.png", //구름조금
        "03": "https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/xOhmdPeSdi3.png", //구름
        "04": "https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/xOhmdPeSdi3.png", //구름
        "09": "https://static.xx.fbcdn.net/rsrc.php/v3/y-/r/u7vM4YYwbHw.png", //비조금
        10: "https://static.xx.fbcdn.net/rsrc.php/v3/y-/r/u7vM4YYwbHw.png", //비
        11: "http://www.weather.go.kr/images/icon/NW/NB14.png", //뇌우
        13: "http://www.weather.go.kr/images/icon/NW/NB11.png", //눈
        50: "https://static.xx.fbcdn.net/rsrc.php/v3/y7/r/M0bCMVLkmhd.png", //안개
      };