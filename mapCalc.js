var METERS_PER_MILE = 1609.34;

$("#find_dir").bind('click', function() {
	getCoords();
	
});


function getCoords(){
		start_geo = new google.maps.Geocoder();
		end_geo = new google.maps.Geocoder();
		
		start_geo.geocode({"address":document.getElementById("start").value}, function(result, status){
			console.log(result);
			document.getElementById("hidstart").value = result[0].geometry.location;
		});
		end_geo.geocode({"address":document.getElementById("end").value}, function(result, status){
			document.getElementById("hidend").value = result[0].geometry.location;
			getDistance("DRIVING", "drive");
			getDistance("TRANSIT", "transit");
			getDistance("BICYCLING", "bike");
			getDistance("WALKING", "walk");	
		
		});
				
};
function getDistance(travelMode, id){		
		var directions = new google.maps.DirectionsService();
		
		var request = {
			origin : document.getElementById("hidstart").value,
			destination: document.getElementById("hidend").value,
			travelMode: google.maps.TravelMode[travelMode]
		}
		
		directions.route(request, function (response, status){
			document.getElementById(id).innerHTML += (response.routes[0].legs[0].distance.value)/METERS_PER_MILE;
			console.log(response);
		});
};
