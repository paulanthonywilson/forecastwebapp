$(function(){
  var presets = $('#presets');
  var latitude = $('#latitude');
  var longitude= $('#longitude');
  var geoloader = $('#geoloader');
  geoloader.hide()

  $('#presets').change(function(){
    var lonlat = presets.val().split(' ');
    latitude.val(lonlat[0]);
    longitude.val(lonlat[1]);
  });


  $('#current_location').click(function(){

    geoloader.show();

    navigator.geolocation.getCurrentPosition(function(position){
      geoloader.hide();
      latitude.val(position.coords.latitude);
      longitude.val(position.coords.longitude);
    },function(){geoloader.hide();});
    return false;
  });
});

