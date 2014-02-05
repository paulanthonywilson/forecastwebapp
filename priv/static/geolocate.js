$(function(){
  var presets = $('#presets');
  var latitude = $('#latitude');
  var longitude= $('#longitude');

  $('#presets').change(function(){
    var lonlat = presets.val().split(' ');
    latitude.val(lonlat[0]);
    longitude.val(lonlat[1]);
  });


  $('#current_location').click(function(){

    navigator.geolocation.getCurrentPosition(function(position){
      latitude.val(position.coords.latitude);
      longitude.val(position.coords.longitude);
    });
    return false;
  });
});

