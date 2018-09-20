<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMapsView.aspx.cs" Inherits="ViewAPIMaps.GoogleMapsView" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Integrate Api GoogleMaps</title>
  <style>
    #map{
      height:400px;
      width:100%;
    }
  </style>
</head>
<body>
  <h1>View Maps</h1>
  <div id="map"></div>

  <script>
    function initMap(){

        // Array of all markers
        var markers = [
        {
          coords:{lat:-37.822066,lng:144.963454},
        },
        {
          coords:{lat:-37.803082,lng:144.862707},
        },
        {
          coords:{lat:-37.841936,lng:144.935747}
        },
        {
          coords:{lat:-35.309049,lng:149.108155}
        }
        {
          coords:{lat:-37.807772,lng:145.059477}
        }

      ];

      // Map options
      var options = {
        zoom:12, 
        center:{lat:-37.822066,lng:144.963454}
      }
     
      // New map
      var map = new google.maps.Map(document.getElementById('map'), options);

      // Loop through markers
      for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
      }

      // Function aDd Marker Function
      function addMarker(props){
        var marker = new google.maps.Marker({
          position:props.coords,
          map:map,
        });

      }
    }

    </script>
    <%--Create the comunnication with API and send my ApiKey--%>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB31ipOhnWH4py3EM1WIp3KpqfDLFTVu_0&callback=initMap"
    async defer></script>
  </body>
</html>
