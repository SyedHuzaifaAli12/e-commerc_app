import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class maps extends StatefulWidget {
  const maps({super.key});

  @override
  State<maps> createState() => _mapsState();
}

class _mapsState extends State<maps> {

    late GoogleMapController mapcontroller;
  final Set<Marker> markers = {};

  final LatLng _initialPosition =
      LatLng(25.397656, 68.3616974); 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setlocation();
  }
  
  setlocation() {
    _handleMapTap(LatLng(25.397656, 68.3616974), "Smit Hyderabad");
    _handleMapTap(LatLng(25.3840949, 68.2675801), "Restarant 1 ");
    _handleMapTap(LatLng(25.3669986, 68.2726173), "Restarant 2 ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 16,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          mapcontroller = controller;
        },
        // onTap: _handleMapTap,
      ),
    );
  }

  void _handleMapTap(LatLng position, name) {
    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId(DateTime.now().toString()), // Unique ID
          position: position,
          infoWindow: InfoWindow(
            title: 'New Marker',
            snippet: name,
          ),
          onTap: () {
            // _onMarkerTapped(position);
          },
        ),
      );
    });
  }

  void _onMarkerTapped(LatLng position) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Marker Tapped'),
          content: Text(
              'Marker at ${position.latitude}, ${position.longitude} was tapped.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}