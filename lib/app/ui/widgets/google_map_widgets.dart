import 'dart:async';

import 'package:flutter/material.dart';
 import 'package:google_maps_flutter/google_maps_flutter.dart';
class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Maps Sample App'),
              backgroundColor: Colors.green[700],
            ),
            body: Stack(
              children: <Widget>[
                GoogleMap(initialCameraPosition: CameraPosition(target:
                LatLng(-33.870840,151.206286),
                    zoom: 12)
                )
              ],
            )
        ),
      ),
    );
  }

}