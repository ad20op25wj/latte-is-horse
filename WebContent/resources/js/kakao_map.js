var container = document.getElementById('map');
var options = {
  center: new kakao.maps.LatLng(35.888661, 128.612121),
  level: 4
};

var map = new kakao.maps.Map(container, options);
	  
function moveMark (lat, lng) {
  var moveLatLon = new kakao.maps.LatLng(lat, lng);
		
  map.panTo(moveLatLon);
		
  var marker = new kakao.maps.Marker({
    position: moveLatLon
  });
		
  marker.setMap(map);
}