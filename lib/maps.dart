import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLayout extends StatefulWidget {
  @override
  _MapLayoutState createState() => _MapLayoutState();
}

class _MapLayoutState extends State<MapLayout> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _getLocationByLattitudeandLongitude = const LatLng(-6.8758821, 107.535965);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Maps',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold
            )
        ),

        actions: <Widget>[

        ],
        leading: new Container(),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _getLocationByLattitudeandLongitude,
              zoom: 11.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                onPressed: () => print('button pressed'),
                materialTapTargetSize: MaterialTapTargetSize.padded,
                backgroundColor: Colors.white,
                child: const Icon(Icons.my_location, size: 30.0),
              ),
            ),
          ),
        ],
      )

    );
  }

}

