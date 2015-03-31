function LoadMAP(address) {
var map;
var myCenter;
var geocoder = new google.maps.Geocoder();
var latitude;
var longitude;

  geocoder.geocode({'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      latitude = results[0].geometry.location.lat();
      longitude = results[0].geometry.location.lng();

      myCenter=new google.maps.LatLng(latitude, longitude);
      var mapOptions = {
        zoom: 13,
        center: myCenter
      };

      map = new google.maps.Map(document.getElementById('map-load-div'),mapOptions);

      var marker = new google.maps.Marker({
        position: myCenter,
        title:'Click to zoom'
      });

      var infowindow = new google.maps.InfoWindow({
        content:address
      });
      infowindow.open(map,marker);

      marker.setMap(map);

      google.maps.event.addListener(marker,'mouseover',function() {
        marker.setIcon("gmapicons/mainmark1.png",this);
      });

    }

  });

}



