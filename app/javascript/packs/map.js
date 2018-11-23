import 'mapbox-gl/dist/mapbox-gl.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

const mapElement = document.getElementById('map');
// only build a map if there's a div#map to inject into
if (mapElement) {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/jadwiga/cjo8eny1z26x52sopwg10rs2j'
  });
  // Adding the markers
  const markers = JSON.parse(mapElement.dataset.markers);

  const toyImg = document.querySelector(".card");
  const toyImages = document.querySelectorAll(".card");

  markers.forEach((marker) => {
    let el = document.createElement('div');
    el.className = 'marker';
    el.style.backgroundImage = toyImages.style["backgroundImage"];
    el.style.width = '30px';
    el.style.height = '30px';
    el.style.backgroundSize = "cover";

    el.addEventListener('click', function() {
        window.alert(marker.properties.message);
    });

    new mapboxgl.Marker(el)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
      .setHTML(marker.infoWindow.content))
      .addTo(map);
  });

// To set the zoom level
  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 })
  }
}
