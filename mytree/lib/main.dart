import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My tree'),
        ),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  child: MapSample(),
                )),
          ],
        ),
      ),
    );
  }
}

void _tree() {
AlertDialog(
  title: Text('Seoul,Korea'),
  backgroundColor: Colors.green,);
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
  }




class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.566, 126.97),
    zoom: 11.5,
  );


  Set<Marker> _createMarker() {
    return {
      Marker(
          markerId: MarkerId("marker_1"),
          position: LatLng(37.5642135, 127.0016985),
          draggable: true,
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          infoWindow: InfoWindow(
            title: 'My First Tree',
            snippet: '220213',
          )),
      Marker(
        markerId: MarkerId("marker_2"),
        infoWindow: InfoWindow(title: 'My Second Tree', snippet: '220214'),
        draggable: true,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: LatLng(36.33, 127.4),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        mapType: MapType.normal,
        markers: Set.from(_createMarker()),
        initialCameraPosition: _kGooglePlex,
        onCameraMove: (_) {},
        myLocationButtonEnabled: false,
      ),
    );
  }
}