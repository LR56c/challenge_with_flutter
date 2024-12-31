import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:geolocator/geolocator.dart' as Geo;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  StreamSubscription<Geo.Position>? positionStream;
  StreamSubscription? gpsServiceSubscription;
  MapboxMap? mapboxMap;

  @override
  void initState() {
    super.initState();
    var isEnabled = false;

    unawaited(() async {
      final status = await Permission.location.request();

      switch (status) {
        case PermissionStatus.granted:
          isEnabled = await Geo.Geolocator.isLocationServiceEnabled();
          break;

        case PermissionStatus.denied:
        case PermissionStatus.restricted:
        case PermissionStatus.limited:
        case PermissionStatus.provisional:
        case PermissionStatus.permanentlyDenied:
          openAppSettings();
      }
    }());

    gpsServiceSubscription =
        Geo.Geolocator.getServiceStatusStream().listen((event) {
      final isEnabled = (event.index == 1) ? true : false;
      print('GPS stream: $isEnabled');
    });
    unawaited(() async {
      final position = await Geo.Geolocator.getCurrentPosition();
      print('Current position: ${position.latitude}, ${position.longitude}');
      positionStream = Geo.Geolocator.getPositionStream().listen((event) {
        print('New position: ${position.latitude}, ${position.longitude}');
        if (mapboxMap != null) {
          mapboxMap?.flyTo(
              CameraOptions(
                center: Point(
                    coordinates: Position(event.longitude, event.latitude)),
                zoom: 15,
              ),
              MapAnimationOptions(duration: 300, startDelay: 0));
        }
      });
    }());
  }

  @override
  Widget build(BuildContext context) {
    CameraOptions camera = CameraOptions(
        center: Point(coordinates: Position(-98.0, 39.5)),
        zoom: 2,
        bearing: 0,
        pitch: 0);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen'),
        ),
        body: MapWidget(
          cameraOptions: camera,
          onMapCreated: _onMapCreated,
        ));
  }

  void _onMapCreated(MapboxMap controller) {
    mapboxMap = controller;
  }
}
