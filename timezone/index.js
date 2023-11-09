

let loc_list = []

let acc_token = "pk.eyJ1Ijoic3VtaXRjaGF0dGVyamVlIiwiYSI6ImNrd2prODhoazB6enIycHBrZmRrY2FtMGkifQ.WS22x5YJykpK9aFATKT8EA";
            //var L = window.L;
var map = L.map('issMap').setView([31.7, 70.25], 13);


L.tileLayer(`https://api.mapbox.com/v4/mapbox.satellite/{z}/{x}/{y}@2x.png?access_token=${acc_token}`,
            {
              maxZoom: 24,
              id: "mapbox/streets-v11",
              tileSize: 512,
              zoomOffset: -1,
              accessToken: acc_token,
            }
        ).addTo(map);

var polygon = null;
map.on('click', function(e) {
        var lat = e.latlng.lat; // Latitude of the clicked point
        var lng = e.latlng.lng; // Longitude of the clicked point
        loc_list.push([lat,lng])
        console.log("Clicked coordinates: " + lat + ", " + lng);
        if(loc_list.length!=0 && polygon!=null){
                polygon.remove();
        }
        var new_poly = L.polygon(loc_list,{color:'red'}).addTo(map);
        console.log("length Coordinates -> "+ loc_list.length);
        polygon = new_poly
});