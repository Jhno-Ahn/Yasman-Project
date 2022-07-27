var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 37.61477167645704, lng:  127.01337638470704},
    zoom: 15
  });
}

  function initMap() {
      var seoul = { lat: 37.61477167645704, lng: 127.01337638470704 };
      map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: seoul
      });

      new google.maps.Marker({
          position: seoul,
          map: map,
        //   label: "서경대학교 풋살파크"
      });
  }