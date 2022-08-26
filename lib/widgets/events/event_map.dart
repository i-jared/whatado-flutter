import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';

class EventMap extends StatefulWidget {
  final Event event;
  EventMap({required this.event});
  @override
  State<StatefulWidget> createState() => _EventMapState();
}

class _EventMapState extends State<EventMap> {
  late GoogleMapController _controller;
  late CameraPosition _location;

  @override
  void initState() {
    super.initState();
    final coordinates = widget.event.coordinates.geoPoint;
    _location = CameraPosition(
      target: LatLng(coordinates.latitude, coordinates.longitude),
      zoom: 13.5,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppRadii.button)),
      height: 200,
      width: double.infinity,
      child: GoogleMap(
        markers: {Marker(markerId: MarkerId("Event Location"), position: _location.target)},
        buildingsEnabled: false,
        rotateGesturesEnabled: false,
        scrollGesturesEnabled: false,
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        tiltGesturesEnabled: false,
        mapToolbarEnabled: false,
        compassEnabled: false,
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _location,
        onMapCreated: (GoogleMapController controller) {
          setState(() => _controller = controller);
        },
      ),
    );
  }
}
