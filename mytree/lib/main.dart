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
        appBar : AppBar(
          title: Text('My tree'),
        ),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding : const EdgeInsets.all(8.0),
              child : Container(
                child: MapSample(),
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: () => print('button pressed'),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.search, size: 36.0),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.5642135, 126.58),
    zoom: 14.4746,
  );

  List<Marker> _markers = [];


  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("1"),
        draggable: true,
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(
          title: '0213',
          snippet: 'Tree is growing well!',
        ),
        position: LatLng(37.5642135, 127.0016985)));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        mapType: MapType.normal,
        markers: Set.from(_markers),
        initialCameraPosition: _kGooglePlex,
        onCameraMove: (_) {},
        myLocationButtonEnabled: false,
      ),
    );
  }
}
